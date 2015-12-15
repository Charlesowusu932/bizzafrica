Rails.application.routes.draw do
 root 'pages#home'
 get 'writer', to: 'pages#writer'
 get 'form', to: 'pages#form'

 resources :posts
end
