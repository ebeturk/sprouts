class WantsController < ApplicationController

  def index
    @want = want.all
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @want = want.new
  end

  def create
    @want = want.new(want_params)
    @plant = Plant.find(params[:plant_id])
    @want.plant = @plant # plant user is wanted in
    @want.user = current_user # user that is wanted in plant
    @chatroom = Chatroom.new(params[:chatroom_id])
    @want.save!

  end

  def match
    current_user.wants.each |want| do
      interest.plant.user.wants.each |wanted| do
        if int.plant.user == current_user
          match = Match.new
          match.user1 = current_user
          match.user2 = wanted.plant.user
          match.plant1 = want.plant
          match.plant2 = wanted.plant
          match.save!
        end
      end
    end
  end

        # @request = Request.new(request_params)
        # @plant = Plant.find(params[:plant_id])
        # @request.plant = @plant
        # @user = @plant.user
        # @user =
        # @want = want.new(want_params)
        # @plant = Plant.find(params[:plant_id])

  def destroy
    @want = want.find(params[:id])
    @want.destroy
    respond_to do |format|
      format.html { redirect_to plant_path(@want.plant), notice: "Your Match was cancelled", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  def want_params
    params.require(:want).permit(:match, :plant_want_id, :plant_exchange_id, :user_want_id, :user_exchange_id)
  end
end
