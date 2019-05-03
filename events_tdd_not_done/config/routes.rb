Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "events_tdd_not_done" => "events_tdd_not_done#index"
  get "events_tdd_not_done/:id" => "events_tdd_not_done#show", as: "event"
end
