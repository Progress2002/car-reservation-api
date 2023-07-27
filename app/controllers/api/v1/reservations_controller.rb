class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(created_at: :desc)
    render json: @reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { reservation: @reservation, message: 'success' }, status: :created
    else
      render json: { error: 'Error creating reservation' }, status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: { error: 'Error updating reservation' }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render json: { message: 'success' }, status: 200
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :city, :user_id, :car_id)
  end
end
