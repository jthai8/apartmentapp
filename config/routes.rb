Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'





  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'apartments#index'
  # get '/apartments/search' => 'apartments#search'
  # get '/apartments/search_description' => 'apartments#search_description'
  # get '/apartments/search_all' => 'apartments#search_all'
  resources :apartments do  # Add this and the "do" "end"
    # GET /apartments/:apartment_id/map_locations
    get 'map_location'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
