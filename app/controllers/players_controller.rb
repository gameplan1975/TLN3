class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :default_date_setting, only: [:create]
  before_action :authenticate_user!

  def index
    @players = Player.all.page(params[:page]).per(5)
  end
    
  def new
    if current_user.player == nil
      @player = Player.new
    else
      redirect_to homes_top_path, notice: "１回しかプレイヤー登録できません"
    end
  end

  def show
    @player = Player.find_by(id: params[:id])
    @questions = Question.where(user_id: @player.user.id).page(params[:page]).per(3)
  end
    
  def edit
  end
    
  def create
    @player = Player.new(player_params)
    @player.user_id = current_user.id

    if @player.save
      redirect_to homes_top_path, notice: "プレイヤー情報を登録しました"
    else
      render :new, notice: "プレイヤー情報を登録できませんでした..."
    end
  end
    
  def update
    if @player.update(player_params)
      redirect_to players_path, notice: "プレイヤー情報を変更しました"
    else
      render :edit
    end
  end
    
  def destroy
    @player.destroy
    redirect_to players_path
  end
    
  private
  def set_player
    @player = Player.find(params[:id])
  end
  
  def player_params
    params.require(:player).permit(:name, :user_id, :favorite_genre, :game, :correct, :message, :admin)
  end

  def default_date_setting
    #できれば初期設定はここでやりたい
  end 
end
