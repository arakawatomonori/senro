class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
    respond_to do |format|
      format.html
      format.json { render :json => @milestones}
    end
  end
  
  def show
    @milestone = Milestone.find(params[:id])
  end
  
  def new
    @milestone = Milestone.new
  end
  
  def create
    @milestone = Milestone.new(params.require(:milestone).permit(:name, :distance, :photo_url))
    @milestone.save
    redirect_to @milestone
  end
end
