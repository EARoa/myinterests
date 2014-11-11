Rails.application.routes.draw do

  devise_for :users


  root 'links#index'

  get 'links/new' => "links#new", as: :new_link
  post "/links" => "links#create", as: :links
end
