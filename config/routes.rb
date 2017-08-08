Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :dashboard, :only => :show

  resources :meals, :only => [:new, :create]
  resource :daily_goal, :only => [:new, :create, :edit, :update]

  root :to => "welcome#index"
end
