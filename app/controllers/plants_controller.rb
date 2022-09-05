class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: :index

  def index

    if params[:query].present?
      sql = "name @@ :query OR category @@ :query"
        @plants = Plant.where(sql, query: "%#{params[:query]}%")
    else
    @plants = Plant.all

    sql = "name @@ :query OR category @@ :query"
      @plants = Plant.where(sql, query: "%#{params[:query]}%")

    #  The `geocoded` scope filters only plants with coordinates
    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { plant: plant }),
        # info_window: "<h1>hola probando</h1>",
        image_url: helpers.asset_url("sprouts_logo")
      }
      end

    end
    @marks = current_user.marks


  end

  def show
    @mark = Mark.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    @plant.save
    #  if @plant.save
    #    redirect_to plants_path(@plant)
    #  else
    #    render :new
    #  end
  end

  def profile
    @plants = Plant.all.where(user_id: current_user.id)
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

  private

  def plant_params
    params.require(:plant).permit(:name, :category, :lighting, :watering, :temperature, :address)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end

end
