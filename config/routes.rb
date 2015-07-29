Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers => { :confirmations => "confirmations" }
  resources :users
  get '/applications/review', to: 'applications#review'
  resources :applications
   
    get 'visitors/countdown'

  as :user do
    patch '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
end
