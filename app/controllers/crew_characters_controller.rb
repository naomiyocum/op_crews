class CrewCharactersController < ApplicationController
  def index
    @crew = Crew.find(params[:id])
    @chars = @crew.characters

    if params["sorted"] != nil
      @chars = @chars.sort_by &:name
    end
  end
end

