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
    @species = Species.find(params[:id])
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      flash[:notice] = "Your sighting was saved"
      redirect_to("/")
    else
      flash[:notice] = "The sighting you entered was invalid"
      render('sightings/new.html.erb')
    end
  end

  def show
    @species = Species.find(params[:id])
    @sighting = Sighting.find(params[:sighting_id])
  end

  def edit
    @sighting = Sighting.find(params[:sighting])
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:sighting])
    @species = Species.find(params[:id])
    if @sighting.update(params[:sighting])
      flash[:notice] = "Your sighting was updated"
      render("species/show.html.erb")
    else
      flash[:notice] = "The sighting you entered was invalid"
      render('sightings/edit.html.erb')
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @sighting = Sighting.find(params[:sighting_id])
    @sighting.destroy
    falsh[:notice] = "Your sighting was destoryed"
    redirect_to("/species/#{@species.id}")
  end


end
