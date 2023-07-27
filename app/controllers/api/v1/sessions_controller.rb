class Api::V1::SessionsController < ApplicationController
  # include Devise::Controllers::SignInOut
  respond_to :json

  def destroy
    # Sign out the user
    sign_out(current_user) if user_signed_in?

    render json: { message: 'User signed out successfully' }
  end

  def create
    username = params[:user][:username]
    user = User.find_by(username:)

    if user&.valid_password?(params[:user][:password])
      sign_in(user)
      render json: { user:, message: 'Sign in successfuly' }
    else
      render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
    end
  end
end
