class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @characters_params = params.require(:character).permit(:name, :speed, :attack, :defense, :user_id)
    @character = Character.create(@characters_params)
    if @character.save
      redirect_to characters_path, notice: 'Character successfully created'
    else
      redirect_to characters_path, notice: 'Error while creating the character'
    end
  end

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @characters_new_params = params.require(:character).permit(:name, :speed, :attack, :defense, :user_id)
    if @character.update(@characters_new_params)
      redirect_to characters_path, notice: 'Character edited correctly'
    else
      redirect_to characters_path, notice: 'Error while editing the character'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path, notice: 'Character nicely destroyed'
  end
end
