Rails.application.routes.draw do
  resources :aircrafts, only: %i[index show]
  resources :origin_countries, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
