class SlotsController < ApplicationController
  respond_to :html
  def index
    @slots = Slot.all
    respond_with @slots
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
