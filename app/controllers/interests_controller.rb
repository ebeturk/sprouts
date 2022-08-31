class InterestsController < ApplicationController

  def index
    @interest = Interest.all
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    @plant = Plant.find(params[:plant_id])
    @interest.save!
    @interest.plant = @plant # plant user is interested in
    @interest.user = current_user # user that is interested in plant
    @chatroom = Chatroom.new(params[:chatroom_id])

  end

  def match
    current_user.interests.each |interest| do
      interest.plant.user.interests.each |int| do
        int.plant.user == current_user
      end
    end
  end

        # @request = Request.new(request_params)
        # @plant = Plant.find(params[:plant_id])
        # @request.plant = @plant
        # @user = @plant.user
        # @user =
        # @interest = Interest.new(interest_params)
        # @plant = Plant.find(params[:plant_id])

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    respond_to do |format|
      format.html { redirect_to plant_path(@Interest.plant), notice: "Your Match was cancelled", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:match, :plant_interest_id, :plant_exchange_id, :user_interest_id, :user_exchange_id)
  end
end
