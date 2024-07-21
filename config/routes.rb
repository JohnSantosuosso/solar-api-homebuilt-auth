Rails.application.routes.draw do
  resources :api_keys, path: 'api-keys', only: %i[index create destroy]
  namespace :api do
    namespace :v1 do
      get 'fetch-data', to: 'external_services#fetch_data'
    end
  end
end
