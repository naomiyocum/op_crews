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
end

