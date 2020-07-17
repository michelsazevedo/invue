Rails.application.routes.draw do
  root to: 'healthz#index'

  namespace :api, defaults: { format: :json } do
    resources :invoices, only: [:index]
  end
end
