Gotruckergo::Application.routes.draw do
  devise_for :users, :controllers => { registrations:  'users/registrations',
                                      :sessions => "users/sessions",
                                      :passwords => 'users/passwords',
                                      :confirmations => 'users/confirmations'
  }
  authenticate :user do
    namespace :users do
      resources :ui
      resources :users
      resources :accounts
      resources :drivers
      resources :profile, :only => [:edit, :update]
      resources :trucks
      resources :trailers
      resources :brokers
      resources :shipments
      resources :receipts
      resources :repairs
      get '/dashboard' => 'dashboards#index', as: :dashboard
      get '/' => 'dashboards#index'
    end
  end

  devise_for :admins, :controllers => { registrations: 'admins/registrations',
                                      :sessions => "admins/sessions",
                                      :passwords => 'admins/passwords',
                                      :confirmations => 'admins/confirmations'
  }
  authenticate :admin do
    namespace :admins do
      resources :ui
      resources :users
      resources :accounts
      resources :admins
      resources :drivers
      resources :profile, :only => [:edit, :update]
      resources :trucks
      resources :trailers
      resources :brokers
      resources :shipments
      resources :receipts
      resources :repairs
      get '/dashboard' => 'dashboards#index', as: :dashboard
      get '/' => 'dashboards#index'
    end
  end
  match "/prices" => "pages#prices", :as => :prices
  match "/about_us" => "pages#about_us", :as => :about_us
  match "/test" => "pages#test", :as => :test
  root :to => 'pages#index'
end
