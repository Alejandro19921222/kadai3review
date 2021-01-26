Rails.application.routes.draw do
  get 'book/index'
  get 'book/show'
  get 'book/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'home/about', to: 'homes#about'
  resources :user, only:[:update, :index, :show, :edit]
  resources :book, only:[:index, :show, :edit, :create, :update, :destroy]
end
