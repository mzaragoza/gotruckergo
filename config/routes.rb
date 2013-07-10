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
      resources :accounts, :only => [:show, :edit, :update]
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
      resources :accounts
      resources :admins
      resources :brokers
      resources :drivers
      resources :plans
      resources :profile, :only => [:edit, :update]
      resources :receipts
      resources :repairs
      resources :shipments
      resources :trailers
      resources :trucks
      resources :users
      post '/users/login_as' => 'users#login_as', as: :login_as_user
      get '/dashboard' => 'dashboards#index', as: :dashboard
      get '/' => 'dashboards#index'
    end
  end

  resources :leads, :only => [:new, :create]
  match '/contact_us' => 'leads#new', :as => :contact_us
  match '/thanks' => 'leads#thanks', :as => :thanks
  match "/prices" => "pages#prices", :as => :prices
  match "/about_us" => "pages#about_us", :as => :about_us
  match "/test" => "pages#test", :as => :test
  root :to => 'pages#index'
end
