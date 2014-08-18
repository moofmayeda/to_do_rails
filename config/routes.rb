Rails.application.routes.draw do

  match('/', {:via => :get, :to =>'tasks#index'})
  match('/', {:via => :post, :to =>'tasks#create'})
  match('/:id', {:via => :get, :to => 'tasks#show'})
  match('/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  match('/:id', {:via => :delete, :to => 'tasks#destroy'})
end
