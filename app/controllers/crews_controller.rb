class CrewsController < ApplicationController
  def index
    @crews = Crew.order(:created_at)
  end

  def show
    @crew = Crew.find(params[:id])
  end

  def new
  end

  def create
    crew = Crew.create(crew_params)
    redirect_to "/crews"
  end

  def crew_params
    params.permit(:name, :ship, :ranking, :worst_generation)
  end
end