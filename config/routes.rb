Rails.application.routes.draw do
  root "events#index" 
  resources :events

  # root "articles#index"
end
