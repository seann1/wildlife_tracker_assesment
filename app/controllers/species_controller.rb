class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def new
    @species = Species.new
    render('species/new.html.erb')
  end

  def create
    @species = Species.new(params[:species])

    if @species.save
      flash[:notice] = "Your species was saved"
      render('species/show.html.erb')
    else
      flash[:notice] = "Your entry was not valid"
      render('species/new.html.erb')
    end
  end

  def edit
    @species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      redirect_to("/")
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    flash[:notice] = "Species destroyed"
    redirect_to('/')
  end
end
