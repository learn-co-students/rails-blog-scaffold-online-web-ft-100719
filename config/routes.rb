Rails.application.routes.draw do
  resources posts
  get 'posts/index'
  get 'posts/:id'
  get 'posts/new'
  get 'posts/:id/edit'

  #resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :apartments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
