Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # resources :jobs do
  #   collection do
  #     get :search
  #   end
  #   resources :resumes
  # end
  # namespace :admin do
  #   resources :jobs do
  #     member do
  #       post :publish
  #       post :hide
  #     end
  #     resources :resumes
  #   end
  # end
  resources :events
  namespace :admin do
    resources :events
  end
  get '/about', to: 'events#about'
end
