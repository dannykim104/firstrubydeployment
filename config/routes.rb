Rails.application.routes.draw do
  root 'dojos#index'

  get 'dojos/new'

  post 'dojos' => 'dojos#create' 

  get 'dojos/:id' => 'dojos#display'

  delete "dojos/:id" => "dojos#delete"

  patch "dojos/:id" => "dojos#update"

  get 'dojos/:id/edit' => 'dojos#showedit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
