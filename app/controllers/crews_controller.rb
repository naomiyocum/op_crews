class CrewsController < ApplicationController
  def index
    @crews = Crew.all
  end
end