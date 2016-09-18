Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # About pages
  get "/about/" => "static_page#show", page: "home"
  get "/about/:page" => "static_page#show"

  root "static_page#show", page: "home"
end
