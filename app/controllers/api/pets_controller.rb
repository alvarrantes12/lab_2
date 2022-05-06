module Api
class PetsController < ApplicationController  
  skip_before_action :verify_authenticity_token
  before_action :set_pet, only: %i[ show edit update destroy ]

  
  def index
    @pets = Pet.all
  end
  
  def show; end
  
  def new
    @pet = Pet.new
  end
  
  def edit; end
  
  def create
    @pet = Pet.new(pet_params)
    /respond_to do |format|/

      if @pet.save
        render 'views/api/pets', status: :created
        /format.html { redirect_to pet_url(@pet), notice: "Pet was successfully created." }
        format.json { render :show, status: :created, location: @pet }/
      else
        render json: @pets.errors, status: :unprocessable_entity
        /format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }/
      end
    /end/
  end

  
  def update
    /respond_to do |format|/
      if @pet.update(pet_params)
        render 'views/api/pets', status: :created
        /format.html { redirect_to pet_url(@pet), notice: "Pet was successfully updated." }
        format.json { render :show, status: :ok, location: @pet }/
      else
        render json: @pets.errors, status: :unprocessable_entity
        /format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }/
      end
    /end/
  end

  
  def destroy
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def set_pet
      @pet = Pet.find(params[:id])
    end

    
    def pet_params
      params.require(:pet).permit(:name, :race, :pedigree)
    end
end
end
