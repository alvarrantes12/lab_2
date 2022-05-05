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

    if @pet.save
      render 'api/pets/show', status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end

  end

  def update
      if @pet.update(pet_params)
        render 'api/pets/show', status: :created
      else
        render json: @pet.errors, status: :unprocessable_entity
      end

  end

  def destroy
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:name, :lineage, :pedigree)
    end
end
