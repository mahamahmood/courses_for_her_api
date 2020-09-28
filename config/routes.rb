Rails.application.routes.draw do
  resources :ledgers
  resources :instructors
  resources :courses
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
