Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :dashboard, :only => :show

  resource :meals, :only => [:new, :create]

  root :to => "welcome#index"
end
