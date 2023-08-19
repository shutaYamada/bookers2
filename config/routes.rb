Rails.application.routes.draw do
  devise_for :users
  get 'home/about', to: 'homes#about', as: 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :users
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  
  
end
