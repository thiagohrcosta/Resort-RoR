class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
    authorize @room
  end

  def create
    @room = Room.new(room_params)
    authorize @room
    if @room.save
      redirect_to dashboard_rooms_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(
      :name,
      :quantity,
      :bed,
      :bathroom,
      :price,
      :description
    )
  end

end
