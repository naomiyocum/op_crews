class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @char = Character.find(params[:id])
  end
end