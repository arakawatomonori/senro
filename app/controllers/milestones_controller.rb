class MilestonesController < ApplicationController
  # GET /milestones.:format
  def index
    #　Milestoneモデルをすべて取得
    @milestones = Milestone.all
    # 拡張子によって出力を切り替える
    respond_to do |format|
      format.html
      # 拡張子がjsonだったら、jsonフォーマットで出力
      #　https://ja.wikipedia.org/wiki/JavaScript_Object_Notation
      format.json { render :json => @milestones}
      format.xml { render :xml => @milestones}
    end
  end

  # GET /milestones/:id
  def show
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
  end
  
  # GET /milestones
  def new
    # 空のMilestoneモデルを生成
    @milestone = Milestone.new
  end
  
  #　POST　/milestones
  def create
    #　paramsの中の値でMilestoneモデルを生成
    #　permit ＝　許す　name,distance,photo_urlを許可
    @milestone = Milestone.new(params.require(:milestone).permit(:name, :distance, :photo_url))
    # Milestoneモデルを保存
    @milestone.save
    #　/milestones/@milestone.id
    redirect_to @milestone
  end

  
  # GET /milestones/:id/edit 
  def edit
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
  end

  # PATCH /milestones/:id
  def update
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
    #　permit ＝　許す　name,distance,photo_urlを許可
    #  既存のMilestoneモデルを上書き
    @milestone.update(params.require(:milestone).permit(:name, :distance, :photo_url))
    redirect_to milestones_path
  end


end
