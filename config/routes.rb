Rails.application.routes.draw do

  root 'links#index'

  get 'links/new' => "links#new", as: :new_link
  post "/links" => "links#create", as: :links

end
