Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :invoices, only: [:index]
  end
end
