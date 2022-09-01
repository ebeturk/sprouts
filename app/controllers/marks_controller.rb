class MarksController < ApplicationController
  class marksController < ApplicationController

    def index
      @mark = mark.all
    end

    def new
      @plant = Plant.find(params[:plant_id])
      @mark = mark.new
    end

    def create
      @mark = mark.new(mark_params)
      @plant = Plant.find(params[:plant_id])
      @mark.plant = @plant # plant user is marked in
      @mark.user = current_user # user that is marked in plant
      @chatroom = Chatroom.new(params[:chatroom_id])
      @mark.save!

    end

    def match
      current_user.marks.each |mark| do
        interest.plant.user.marks.each |marked| do
          if int.plant.user == current_user
            match = Match.new
            match.user1 = current_user
            match.user2 = marked.plant.user
            match.plant1 = mark.plant
            match.plant2 = marked.plant
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
          # @mark = mark.new(mark_params)
          # @plant = Plant.find(params[:plant_id])

    def destroy
      @mark = mark.find(params[:id])
      @mark.destroy
      respond_to do |format|
        format.html { redirect_to plant_path(@mark.plant), notice: "Your Match was cancelled", status: :see_other }
        format.json { head :no_content }
      end
    end

    private

    def mark_params
      params.require(:mark).permit(:match, :plant_mark_id, :plant_exchange_id, :user_mark_id, :user_exchange_id)
    end
  end
