Banktel2::Application.routes.draw do

	
  devise_for :users
  # root :to => 'visitors#new'
  # devise_for :users
  root :to => redirect("/users/sign_in")   

  # root "/users/sign_in" => "sessions#new"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
