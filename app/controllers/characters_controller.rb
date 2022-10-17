class CharactersController < ApplicationController

  def index
    @characters = Character.where(devil_fruit_eater: true)
  end

  def show
    @char = Character.find(params[:id])
  end

  def edit
    @char = Character.find(params[:id])
  end

  def destroy
    char = Character.find(params[:id])
    char.destroy
    redirect_to "/characters"
  end

  def update
    char = Character.find(params[:id])
    char.update(char_params)
    redirect_to "/characters/#{char.id}"
  end

private
  def char_params
    params.permit(:name, :age, :devil_fruit_eater, :epithet, :bounty, :crew_id)
  end
end