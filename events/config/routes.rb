Rails.application.routes.draw do
  resources :registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "events#index"
  #get "events" => "events#index"
  #get "events/:id" => "events#show", as: "event"
  #get "events/:id/edit" => "events#edit", as: "edit_event"
  #patch "events/:id" => "events#update"
  #get "events/new" => "events#new"

  resources :events
end
