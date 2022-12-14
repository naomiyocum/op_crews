class CrewCharactersController < ApplicationController
  def index
    @crew = Crew.find(params[:id])
    @chars = @crew.characters
  end

  def new
    @crew = Crew.find(params[:id])
  end

  def create
    crew = Crew.find(params[:id])
    char = crew.characters.create(char_params)
    redirect_to "/crews/#{crew.id}/characters"
  end

private
  def char_params
    params.permit(:name, :age, :devil_fruit_eater, :epithet, :bounty, :crew_id)
  end
end

