Rails.application.routes.draw do
  
  root 'tweets#index'
  devise_for :users

  resources :tweets do
    member do
      put "like", to: "tweets#like"
      put "dislike", to: "tweets#dislike"
    end 
  end

  resources :users do
    get 'profile'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
