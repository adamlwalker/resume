Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :main

  root 'main#index'
	  get ':name' => 'main#index'
  
end
