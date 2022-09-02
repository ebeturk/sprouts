class MarksController < ApplicationController

    def index
      @mark = Mark.all
    end


    def create
      @mark = Mark.new
      @plant = Plant.find(params[:plant_id])
      @mark.plant = @plant # plant user is marked in
      @mark.user = current_user
      @user = @plant.user # user that owns the plant
      plants = current_user.plants
      if @mark.save!
        matching_mark = Mark.where(user: @user, plant_id: plants.pluck(:id)).order("created_at asc").first #array of my plants' ids
        if matching_mark.present?
          Match.create(user1: current_user, user2: @user, plant1: @plant, plant2: matching_mark.plant)
          redirect_to plant_path, flash: "💚 Your plant's got a match! 💚"
        else
      # @chatroom = Chatroom.new(params[:chatroom_id])
        redirect_to plant_path(@plant)
        end
      else
        render "plants/show", status: :unprocessable_entity
      end
    end

    # def match
      # current_user.marks.each |mark| do
      #   mark.plant.user.marks.each |marked| do
      #     if marked.plant.user == current_user
      #       match = Match.new
      #       match.user1 = current_user
      #       match.user2 = marked.plant.user
      #       match.plant2 = marked.plant
      #       match.plant1 = mark.plant
      #       match.save!
      #     end
      #   end
      # end
    # end

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
