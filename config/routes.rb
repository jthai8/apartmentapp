Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'apartments#index'
  # get '/apartments/search' => 'apartments#search'
  # get '/apartments/search_description' => 'apartments#search_description'
  # get '/apartments/search_all' => 'apartments#search_all'
  resources :apartments do
    # GET /apartments/:apartment_id/map_locations
    get 'map_location'        # Add this and the "do" "end"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
