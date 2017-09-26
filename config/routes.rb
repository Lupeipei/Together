Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :events do
    resources :reviews
    collection do
      get :search
    end
    put :favorite, on: :member
    put :like, on: :member
  end

  namespace :admin do
    resources :events
  end
  namespace :account do
    resource :user
    resources :favorites
    resources :events
  end
  get '/about', to: 'events#about'
end
