Rails.application.routes.draw do
  root to: 'articles#index'
  get '/about', to: 'static_pages#about'
  resources :articles do
    resources :comments
  end
  resources :tags
end
