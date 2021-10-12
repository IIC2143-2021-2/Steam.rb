class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @games_params = params.require(:game).permit(:name, :rating, :description, :price, :category, :user_id)
    @game = Game.create(@games_params)
    if @game.save
      redirect_to games_index_path, notice: 'Game successfully created'
    else
      redirect_to games_index_path, notice: 'Error while creating the game'
    end
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @characters = @game.characters
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @games_new_params = params.require(:game).permit(:name, :rating, :description, :price, :category, :user_id)
    if @game.update(@games_new_params)
      redirect_to games_index_path, notice: 'Game edited correctly'
    else
      redirect_to games_index_path, notice: 'Error while editing the game'
    end
  end

  def delete
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_index_path, notice: 'Game nicely destroyed'
  end
end
