Rails.application.routes.draw do

  match('index', {:via => :get, :to =>'tasks#index'})

end
