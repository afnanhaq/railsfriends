Rails.application.routes.draw do
  
  devise_for :users do
    delete '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
  resources :friends
  #get 'home/index'
  #root 'home#index'
  root 'friends#index'
  get 'home/about_us'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
