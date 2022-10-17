class CrewsController < ApplicationController
  def index
    @crews = Crew.order(created_at: :desc)
  end

  def show
    @crew = Crew.find(params[:id])
  end

  def new
  end

  def destroy
    crew = Crew.find(params[:id])
    crew.destroy
    redirect_to "/crews"
  end

  def edit
    @crew = Crew.find(params[:id])
  end

  def update
    crew = Crew.find(params[:id])
    crew.update(crew_params)
    redirect_to "/crews/#{crew.id}"
  end

  def create
    crew = Crew.create(crew_params)
    redirect_to "/crews"
  end

private
  def crew_params
    params.permit(:name, :ship, :ranking, :worst_generation)
  end
end