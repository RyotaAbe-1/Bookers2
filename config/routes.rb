Rails.application.routes.draw do
  root to: 'home#top'
  get "/home/about" => "home#about", as: "home_about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :edit, :show, :update]
  resources :books, except: :new
  


end
