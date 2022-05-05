class PetsController < ApplicationController
  
  before_action :set_pet, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
 
  def index
    @pets = Pet.all
  end


  def show
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def create
    @pet = Pet.new(pet_params)

   
    if @pet.save
        render 'api/pets/show', status: :created
    else
        render json: @pets.errors, status: :unprocessable_entity
    
    end
  end

  def update
    respond_to do |format|
      if @pet.update(pet_params)
        render 'api/pets/show', status: :created
      else
        render json: @pets.errors, status: :unprocessable_entity
      end
    end
  end

 
  def destroy
    @pet.destroy

    respond_to do |format|
      render 'api/pets/show', status: :deleted
    end
  end

  private
   
    def set_pet
      @pet = Pet.find(params[:id])
    end

    
    def pet_params
      params.require(:pet).permit(:name, :breed, :pedigree)
    end
end
