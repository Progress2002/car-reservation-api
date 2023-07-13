Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index update show create destroy]
      resources :reservations, only: %i[index show update create destroy]
      resources :cars, only: %i[index update show create destroy]
    end
  end
end
