class MilestonesController < ApplicationController
  # このサーバーに以下のようなリクエストが来たときにレスポンスするコントローラー
  # GET /milestones HTTP/1.1
  # GETとかの意味はここ
  # http://www.tohoho-web.com/ex/http.htm
  # https://ja.wikipedia.org/wiki/Hypertext_Transfer_Protocol

  # GET /milestones.format
  def index
    #　Milestoneモデルをすべて取得
    @milestones = Milestone.all
    # URLの拡張子によって出力を切り替える
    respond_to do |format|
      # formatが空のときはhtmlとされる
      # /views/milestones/index.html.erb
      format.html
      # 拡張子がjsonだったら、jsonフォーマットで出力
      # http://www.tohoho-web.com/ex/json.html
      #　https://ja.wikipedia.org/wiki/JavaScript_Object_Notation
      format.json { render :json => @milestones}
      format.xml { render :xml => @milestones}
    end
  end
  
  # GET /milestones/new
  def new
    # 空のMilestoneモデルを生成
    @milestone = Milestone.new
    # /views/milestones/new.html.erb
  end
  
  #　POST　/milestones
  def create
    #　paramsの中の値でMilestoneモデルを生成
    # require =　必要　milestoneが必須
    #　permit ＝　許す　name,distance,photo_urlを許可
    @milestone = Milestone.new(params.require(:milestone).permit(:name, :distance, :photo_url))
    # Milestoneモデルを保存
    @milestone.save
    # redirect 向け直す　
    #　/milestones/@milestone.id
    redirect_to @milestone
  end

  # GET /milestones/:id
  def show
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
    # /views/milestones/show.html.erb
  end

  # GET /milestones/:id/edit 
  def edit
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
    # /views/milestones/edit.html.erb
  end

  # PATCH /milestones/:id
  def update
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
    #　permit ＝　許す　name,distance,photo_urlを許可
    #  既存のMilestoneモデルを上書き
    @milestone.update(params.require(:milestone).permit(:name, :distance, :photo_url))
    # /milestones
    redirect_to milestones_path
  end

  # DELETE /milestones/:id
  def destroy
    #　Milestoneモデルのidを取得
    @milestone = Milestone.find(params[:id])
    #  既存のMilestoneモデルを消去
    @milestone.destroy
    # /milestones
    redirect_to milestones_path
  end
end
