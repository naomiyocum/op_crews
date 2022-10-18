class CrewCharactersController < ApplicationController
  def index
    @crew = Crew.find(params[:id])
    @chars = @crew.characters

    # if params["sorted"] != nil
    #   @chars = @chars.names_sorted
    # end

    # if params.include?("yen")
    #   @chars = @chars.bounties_higher_than(params["yen"].to_i)
    # end
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

