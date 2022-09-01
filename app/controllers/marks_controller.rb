class MarksController < ApplicationController

    def index
      @mark = Mark.all
    end

    def marked?
      Mark.where(user_id: current_user.id, plant_id: params[:plant_id]).exists?
    end

    def create
      @mark = Mark.new unless marked?
      @plant = Plant.find(params[:plant_id])
      @mark.plant = @plant # plant user marked
      @mark.user = current_user # user that marks the plant
      # @chatroom = Chatroom.new(params[:chatroom_id])
      if @mark.save!
        redirect_to plant_path(@plant)
      else
        render "plants/show", status: :unprocessable_entity
      end
    end

    # def match
    #   current_user.marks.each |mark| do
    #     mark.plant.user.marks.each |marked| do
    #       if marked.plant.user == current_user
    #         match = Match.new
    #         match.user1 = current_user
    #         match.user2 = marked.plant.user
    #         match.plant1 = mark.plant
    #         match.plant2 = marked.plant
    #         match.save!
    #       end
    #     end
    #   end
    # end

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
      params.require(:mark).permit()
    end
  end
