class MarksController < ApplicationController

  def index
    @mark = Mark.all
    @matches = Match.where(user_1_id: current_user.id).or(Match.where(user_2_id: current_user.id))

  end


  def create
    @plant = Plant.find(params[:plant_id])
    # raise
    if marked?
      render "plants/show", status: :unprocessable_entity
    else
      @mark = Mark.new

      @mark.plant = @plant # plant user marks
      @mark.user = current_user
      @user = @plant.user # user that owns the plant
      plants = current_user.plants

      if @mark.save!
        matching_mark = Mark.where(user: @user, plant_id: plants.pluck(:id)).order("created_at asc").first #array of my plants' ids
        if matching_mark.present?
          Match.create(user_1: current_user, user_2: @user, plant_1: @plant, plant_2: matching_mark.plant)
          if params[:last_action] == "index"
            redirect_to plants_path(anchor: "plant-#{@plant.id}"), notice: "💚 Your plant has a match! 💚"
            @chatroom = Chatroom.create(name: "Maple House", user_1: current_user, user_2: @user)
          else
            redirect_to plant_path(@plant), notice: "💚 Your plant has a match! 💚"
            @chatroom = Chatroom.create(name: "Banyan House", user_1: current_user, user_2: @user)
          end

        else
          if params[:last_action] == "index"
            redirect_to plants_path(anchor: "plant-#{@plant.id}")
          else
            redirect_to plant_path(@plant)
          end
        end
      end
    end
  end

  def destroy
    @mark = Mark.find(params[:id])
    @plant = @mark.plant
    @user = @mark.user
    @mark.destroy
    match = Match.where(plant_1: @plant, user_1: @user) .or(Match.where(plant_2: @plant, user_2: @user)).first
    match_destroyed = match.present?
    match&.destroy
    respond_to do |format|
      format.html do
        if match_destroyed
          redirect_to plants_path, notice: "Your Match was cancelled", status: :see_other
        else
          redirect_to plant_path(@plant)
        end
      end
      format.json { head :no_content }
    end
  end

  private

  def marked?
    Mark.where(user_id: current_user.id, plant_id: params[:plant_id]).exists?
  end
end
