require 'swagger_helper'

RSpec.describe Api::V1::ReservationsController, type: :request do
  path '/api/v1/reservations' do
    get 'Fetch all reservations' do
      tags 'Reservations'
      produces 'application/json'
      response '200', 'OK' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   start_date: { type: :string, format: 'date' },
                   end_date: { type: :string, format: 'date' },
                   city: { type: :string },
                   user_id: { type: :integer },
                   car_id: { type: :integer }
                 },
                 required: %w[id start_date end_date city user_id car_id]
               }
        run_test!
      end
    end

    post 'Create a new reservation' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          start_date: { type: :string, format: 'date' },
          end_date: { type: :string, format: 'date' },
          city: { type: :string },
          user_id: { type: :integer },
          car_id: { type: :integer }
        },
        required: %w[start_date end_date city user_id car_id]
      }

      response '201', 'Reservation created successfully' do
        schema type: :object,
               properties: {
                 reservation: { '$ref' => '#/components/schemas/Reservation' },
                 message: { type: :string }
               }
        run_test!
      end

      response '422', 'Invalid data - Reservation not created' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               }
        run_test!
      end
    end

    # Add documentation for the 'delete' endpoint to delete a reservation by ID.
    delete 'Delete a reservation by ID' do
      tags 'Reservations'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Reservation deleted successfully' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               }
        run_test!
      end
    end
  end
end
