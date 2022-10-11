class CrewsController < ApplicationController
  def index
    @crews = Crew.all
  end

  def show
    @crew = Crew.find(params[:id])
  end

  def chars_index
    c_id = show.id
    @chars = Character.where(crew_id: c_id)
  end
end