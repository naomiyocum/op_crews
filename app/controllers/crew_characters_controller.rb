class CrewCharactersController < ApplicationController
  def index
    @crew = Crew.find(params[:id])
    @chars = @crew.characters

    if params["sorted"] != nil
      @chars = @chars.sort_by &:name
    end

    if params.include?("bounties_higher_than")
      @chars = @chars.select {|char| char.bounty > params["bounties_higher_than"].to_i}
    end
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

