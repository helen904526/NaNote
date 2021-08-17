Rails.application.routes.draw do
	
  get "/", to: "notes#index"
  resources :notes

  get "/hello", to: "pages#main"
  get "/about", to: "pages#about"

  resources :users, only: [:create] do 
	# GET /users/sign_up 註冊表單
    collection do
	  get :sign_up
	end
	# POST /users        註冊
  end
	# get "/users", to: "users#profile"
end
