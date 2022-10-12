class CrewsController < ApplicationController
  def index
    @crews = Crew.order(:created_at)
  end

  def show
    @crew = Crew.find(params[:id])
  end
end