class SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    @species = Species.find(params[:id])
    @sightings_for_species = Sighting.find(:species_id => params[:id])
    render('sightings/index.html.erb')
  end
  
  def new
    @species = Species.find(params[:id])
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end
  
  def show
    @species = Species.find(params[:id])
    @sighting = Sighting.find(params[:sighting_id])
    render('sightings/show.html.erb')
  end
  
  def create
    
  end