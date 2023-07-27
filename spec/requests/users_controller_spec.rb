require 'swagger_helper'

RSpec.describe Api::V1::UsersController, type: :request do
  path '/api/v1/users' do
    get 'Fetch all users' do
      tags 'Users'
      produces 'application/json'
      response '200', 'OK' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   username: { type: :string },
                   email: { type: :string }
                 },
                 required: %w[id username email]
               }
        run_test!
      end
    end

    post 'Create a new user' do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[username email password]
      }

      response '201', 'User created successfully' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 username: { type: :string },
                 email: { type: :string }
               },
               required: %w[id username email]
        run_test!
      end

      response '422', 'Invalid data - User not created' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               }
        run_test!
      end
    end

    # Add documentation for the 'get' and 'put' endpoints to fetch and update a user by ID.
    path '/api/v1/users/{id}' do
      # GET endpoint
      get 'Fetch a user by ID' do
        tags 'Users'
        produces 'application/json'
        parameter name: :id, in: :path, type: :integer

        response '200', 'OK' do
          schema type: :object,
                 properties: {
                   id: { type: :integer },
                   username: { type: :string },
                   email: { type: :string }
                 },
                 required: %w[id username email]
          run_test!
        end

        response '404', 'User not found' do
          schema type: :object,
                 properties: {
                   error: { type: :string }
                 }
          run_test!
        end
      end
    end

    # Add documentation for the 'delete' endpoint to delete a user by ID.
    delete 'Delete a user by ID' do
      tags 'Users'
      parameter name: :id, in: :path, type: :integer

      response '200', 'User deleted successfully' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               }
        run_test!
      end

      response '404', 'User not found' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               }
        run_test!
      end
    end
  end
end
