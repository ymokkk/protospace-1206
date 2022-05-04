Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes do
  resources :comments, only: :create 
  #resource :favorites, only: [:create, :destroy]
    collection do
    get 'search'
    end
  end
  resources :users, only: :show

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
