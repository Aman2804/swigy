Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  devise_for :users,controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
 }
      
  devise_scope :user do
      get 'profile', to: 'users/registrations#show'
      resources :restaurants
  end
  scope path: 'users/:users_id' do
  	resources :addresses, except: :show
	end
 # resources :users_id do
 #  	resources :addresses, except: :show
	# end
end
