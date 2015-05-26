Rails.application.routes.draw do
resources :main
  root 'main#index'
  
	  get '/admin' => redirect('/admin/dashboard')
	  get ':name' => 'main#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



end
