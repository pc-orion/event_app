Rails.application.routes.draw do
  root "events#index" 
  resources :events

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # root "articles#index"
end
