Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  devise_for :users,controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
 }
      
  devise_scope :user do
      get 'profile', to: 'users/registrations#show'
  end
  scope path: 'users/:users_id' do
  	resources :addresses, except: :show
    resources :restaurants 
    resources :roles
    resources :deliveries
	end
  scope path:'restaurants/:restaurants_id' do 
      resources :restaurant_items
  end
  resources :items
end
