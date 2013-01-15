Gameswap::Application.routes.draw do
  resources :lockers


  resources :line_items


  resources :games


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end