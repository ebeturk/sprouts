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
    @interest.plant_interest_id = interest_plant.id # plant user is interested in
    @interest.user_interest_id = current_user.id # user that is interested in plant
    @interest.user_exchange_id = interest_plant.user.id # owner of plant we are interested in
    @interest.save!
  end

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
