Rails.application.routes.draw do
  devise_for :users
  resources :home, only: [:index, :show]
  resources :users do
    resources :foods, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :recipes do
      member do
        patch 'toggle'
      end
      resources :recipe_foods, only: [:new, :create, :edit, :update, :destroy]
    end
    resources :public_recipes, only: [:index]
  end
  root 'home#index'
end
