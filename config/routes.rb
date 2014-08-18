Rails.application.routes.draw do

  match('/', {:via => :get, :to =>'tasks#index'})
  match('/', {:via => :post, :to =>'tasks#create'})
end
