Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  devise_for :users,controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
 }
      
  devise_scope :user do
      get 'profile', to: 'users/registrations#show'
      get 'restaurants_list', to: 'users/registrations#restaurants_list'
      get 'add', to: 'users/registrations#add'
  end
  scope path: 'users/:users_id' do
  	resources :addresses, except: :show
    resources :restaurants 
    resources :roles
    resources :deliveries
    resources :carts
    resources :orders
	end
  scope path:'oders/:orders_id' do 
      resources :payments
  end
  scope path:'restaurants/:restaurants_id' do 
      resources :restaurant_items
  end
    resources :cart_items
    resources :items

end
