class InterestsController < ApplicationController

  def index
    @interest = Interest.all
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @interest = Interest.new
  end

  def create
    @interest = Interest.new
    @plant = Plant.find(params[:plant_id])
    @interest.plant_interest_id = @plant.id # plant user is interested in
    @interest.user_interest_id = current_user.id# user that is interested in plant
    # @interest.user_exchange_id = interest_plant.user.id # owner of plant we are interested in
    @interest.user_exchange_id = @plant.user.id
    @interest.save!

    #redirect_to

    #@interest = Interest.new(interest_params)
    #@plant = Plant.find(params[:plant_id])
    #@interest.plant = @plant
    #@interest.user = current_user
    #@owner = @plant.user
  end

  def match
    @interest = Interest.find(params[:interest_id])
    @plant = Plant.find(params[:plant_id])
    @interest.plant_exchange_id = @plant.id
    @interest.match = true
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



