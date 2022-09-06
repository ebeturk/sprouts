class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params:[id])
  end

  def delete
    @match = match.find(params[:id])
    @mark = mark.find(params[:id])
    @match.destroy if @mark.destroy
    respond_to do |format|
      format.html { redirect_to plant_path(@mark.plant), notice: "Your Match was cancelled", status: :see_other }
      format.json { head :no_content }
    end
  end
end
