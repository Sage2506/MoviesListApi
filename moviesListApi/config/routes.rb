Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: :create do
        collection do
          post 'login'
        end
      end
      resources :users do
        get 'show'
      end
    end
  end
end
