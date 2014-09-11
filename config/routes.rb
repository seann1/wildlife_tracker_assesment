Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/new', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
  match('sightings/index', {:via => :get, :to => 'sightings#index'})
  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('species/:id/sightings', {:via => :post, :to => 'sightings#create'})
  match('species/:id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('species/:id/sightings/:sighting_id', {:via => :get, :to => 'sightings#show'})
end
