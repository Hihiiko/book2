Rails.application.routes.draw do
  get 'book/new'
  get 'book/index'
  get 'book/show'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show]

  
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: "homes#top"

   get 'homes/about', to:'homes#about', as:'about'
end
