Rails.application.routes.draw do
  resources :authors, only: [:index] do
    resources :articles, only: [:index, :new, :create, :update, :edit]
  end

  namespace :api do
    resources :authors, only: [:index, :new, :create, :update, :edit] do
      resources :articles, only: [:index, :new, :create, :update, :edit]
    end
  end
end
