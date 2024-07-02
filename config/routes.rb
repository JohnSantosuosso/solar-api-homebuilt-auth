Rails.application.routes.draw do
  resources :api_keys, only: [:create, :destroy, :index]
end
