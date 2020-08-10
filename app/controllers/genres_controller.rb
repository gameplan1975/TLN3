class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :admin_check, only: [:new, :create, :update, :edit, :destroy,]

  def index
    @genres = Genre.all.page(params[:page]).per(5)
  end
    
  def new
    @genre = Genre.new
  end

  def edit
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_url
    else
      render :new
    end
  end
    
  def update
    if @genre.update(genre_params)
      redirect_to genres_url
    else
      render :edit
    end
  end
    
  def destroy
    @genre.destroy
    redirect_to genres_url
  end
    
  private
  def set_genre
    @genre = Genre.find(params[:id])
  end
  
  def genre_params
    params.require(:genre).permit(:name, :memo)
  end

  def admin_check
    if current_user.player.admin == false
      redirect_to root_path, notice: "管理者しか実行できません"
    end
  end
end
