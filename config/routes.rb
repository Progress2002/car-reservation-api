Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index update create destroy]
      resources :reservations, only: %i[index update create destroy]
      resources :cars, only: %i[index update create destroy]
    end
  end
end
