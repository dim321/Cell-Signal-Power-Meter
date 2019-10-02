Rails.application.routes.draw do
  root 'net_points#index'
  resources :net_points do
    collection do
      get 'netmap'
      get 'heatmap'
      get 'randomizer'
      get 'direction'
    end
  end

  resources :operators
  devise_for :users
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
