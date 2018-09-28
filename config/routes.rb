Rails.application.routes.draw do
  resources :articles
  devise_for :users, controllers: { registrations: 'users/registrations' }

  authenticated :user do
    root to: 'articles#index', as: :authenticated_root
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
