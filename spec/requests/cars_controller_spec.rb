require 'swagger_helper'

RSpec.describe Api::V1::CarsController, type: :request do
  path '/api/v1/cars' do
    get 'Fetch all cars' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'OK' do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   id: { type: :integer },
                   user_id: { type: :integer },
                   name: { type: :string },
                   image: { type: :string },
                   description: { type: :string },
                   price: { type: :number },
                   model: { type: :string }
                 },
                 required: %w[id user_id name price]
               }
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    parameter name: :id, in: :path, type: :integer
    get 'Fetch a car' do
      tags 'Cars'
      produces 'application/json'
      response '200', 'OK' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 user_id: { type: :integer },
                 name: { type: :string },
                 image: { type: :string },
                 description: { type: :string },
                 price: { type: :number },
                 model: { type: :string }
               },
               required: %w[id user_id name price]
        run_test!
      end
    end
    post 'Create a new car' do
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          user_id: { type: :integer },
          name: { type: :string },
          image: { type: :string },
          description: { type: :string },
          price: { type: :number },
          model: { type: :string }
        },
        required: %w[user_id name price]
      }

      response '201', 'Car created successfully' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 user_id: { type: :integer },
                 name: { type: :string },
                 image: { type: :string },
                 description: { type: :string },
                 price: { type: :number },
                 model: { type: :string }
               },
               required: %w[id user_id name price]
        run_test!
      end

      response '422', 'Invalid data - Car not created' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               }
        run_test!
      end
    end

    delete 'Delete a car by ID' do
      tags 'Cars'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Car deleted successfully' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               }
        run_test!
      end

      response '404', 'Car not found' do
        schema type: :object,
               properties: {
                 error: { type: :string }
               }
        run_test!
      end
    end
  end
end
