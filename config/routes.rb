Rails.application.routes.draw do
	#post 'api/auth/sign_in', to: 'users#data'
	 resources :users 
	 #post   'user_token'      => 'user_token#create'
	 #post 'api/auth/sign_in', to: 'users#authentication' 
	
end
