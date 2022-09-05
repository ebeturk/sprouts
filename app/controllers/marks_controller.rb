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

      @mark.plant = @plant # plant user marks
      @mark.user = current_user
      @user = @plant.user # user that owns the plant
      plants = current_user.plants

      if @mark.save!

        matching_mark = Mark.where(user: @user, plant_id: plants.pluck(:id)).order("created_at asc").first #array of my plants' ids
        if matching_mark.present?
          Match.create(user_1: current_user, user_2: @user, plant_1: @plant, plant_2: matching_mark.plant)
          redirect_to plants_path, notice: "💚 Your plant's got a match! 💚"
          @chatroom = Chatroom.create(user_1: current_user, user_2: @user)
          
        else
        redirect_to plants_path(@plant)
        end
      else
        render "plants/show", status: :unprocessable_entity
      end
    end


    def destroy
      @mark = Mark.find(params[:id])
      @mark.destroy
      if Match.find(@mark.plant_id)
        @mark.destroy
        respond_to do |format|
        format.html { redirect_to plants_path(@mark.plant), notice: "Your Match was cancelled", status: :see_other }
        format.json { head :no_content }
        end
      else
        redirect_to plants_path(@mark.plant)
      end
    end

    private

    def mark_params
      params.require(:mark).permit()
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
