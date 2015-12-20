Rails.application.routes.draw do
 root 'posts#index'
 get 'writer', to: 'pages#writer'
 get 'form', to: 'pages#form'

 resources :posts
 resources :categories, only: [:new, :create, :show]
end
