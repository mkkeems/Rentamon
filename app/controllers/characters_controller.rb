class CharactersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      @characters = policy_scope(Character)
                    .search_by_name_and_category_and_address(params[:query])
                    .order(created_at: :desc).active.geocoded
      @markers = @characters.map do |character|
        {
          lat: character.latitude,
          lng: character.longitude,
          #infoWindow: render_to_string(partial: "info_window", locals: { character: character })
          infoWindow: render_to_string(partial: "info_window", formats: [:html], locals: { character: character })
        }
      end
    else
      @characters = policy_scope(Character).order(created_at: :desc).active.geocoded
      @markers = @characters.map do |character|
        {
          lat: character.latitude,
          lng: character.longitude,
          #infoWindow: render_to_string(partial: "info_window", locals: { character: character })
          infoWindow: render_to_string(partial: "info_window", formats: [:html], locals: { character: character })
        }
      end
    end
    respond_to do |format|
      format.html
      format.json { render json: { characters: @characters } }
    end
  end

  def new
    @character = Character.new
    authorize @character
  end

  def show
    @character = Character.find(params[:id])
    authorize @character
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    @character.save
    authorize @character

    redirect_to "/characters"
  end

  def edit
    @character = Character.find(params[:id])
    authorize @character
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    authorize @character

    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    authorize @character
    redirect_to "/characters"
  end

  private

  def character_params
    params.require(:character).permit(:name, :price, :photo, :description, :status, :category, :address)
  end

end
