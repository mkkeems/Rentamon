class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    # list of characters that belong to current user
    @user = current_user
    @characters = Character.where(user_id: current_user.id).paginate(page: params[:page], per_page: 4)

    # bookings made as client, commented out cuz no bookings yet
    # @bookings = Bookings.where(user_id: current_user.id)

    # as host , list of bookings to approve or have approved

  end
end
