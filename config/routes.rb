Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index update show create destroy]
      resources :reservations, only: %i[index show update create destroy]
      resources :cars, only: %i[index update show create destroy]
    end
  end
  devise_for :users, controllers: {
    sessions: 'api/v1/sessions',
    registrations: 'api/v1/registrations'
  }
end
