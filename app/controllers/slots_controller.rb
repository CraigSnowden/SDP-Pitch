class SlotsController < ApplicationController
  respond_to :html
  def index
    params["room_id"] ||= '1'
    @rooms = Room.all
    @room = Room.find(params["room_id"])
    respond_with @room
  end

  def update
    @slot = Slot.find(params[:id])
    begin
      @slot.update_attributes!(permitted_params)
    rescue ActiveRecord::RecordInvalid
      flash[:error] = @slot.errors.full_messages
    end
    redirect_to root_path
  end

  private
    def permitted_params
      params.require(:slot).permit(:id, :group_id)
    end
end
