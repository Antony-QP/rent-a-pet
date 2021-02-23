class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :location, :breed, :price, :user_id)
  end
end
