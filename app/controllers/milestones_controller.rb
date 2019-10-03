class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all
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
