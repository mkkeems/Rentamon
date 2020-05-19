class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    @character.save

    redirect_to "/characters"
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
  end

  private

  def character_params
    params.require(:character).permit(:name, :price, :photo, :description, :status, :category, :address)
  end

end
