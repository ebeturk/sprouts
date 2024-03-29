class PlantsController < ApplicationController
  before_action :set_plant, only: %i[show edit update destroy]
  # skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql = "name @@ :query OR category @@ :query"
      @plants = Plant.where(sql, query: "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
    @markers = markers(@plants)
    @marks = current_user.marks
  end

  def show
    @mark = Mark.where(user: current_user, plant: @plant).first
  end

  def new
    @plant = Plant.new
  end


  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plants_path(@plant)
    else
      render :new
    end
  end

  def profile
    @plants = Plant.where(user_id: current_user.id)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_path, status: :see_other
  end

  def edit
  end

  def update
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def map
    @plants = Plant.all
    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        info_window: render_to_string(partial: "layouts/shared/info_window", locals: { plant: }),
        image_url: helpers.asset_url("sprouts_logo.png")
      }
    end
    @target_lat = params[:lat]
    @target_lng = params[:lng]
  end

  def markers(plants)
    plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        info_window: render_to_string(partial: "layouts/shared/info_window", locals: { plant: plant }),
        image_url: helpers.asset_url("sprouts_logo.png")
      }
    # @chatrooms = Chatroom.where(user_1_id: current_user.id)
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :category, :lighting, :watering, :temperature, :address, :photo)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
