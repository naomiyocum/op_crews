class CrewCharactersController < ApplicationController
  def index
    crew = Crew.find(params[:id])
    @chars = crew.characters
  end
end

