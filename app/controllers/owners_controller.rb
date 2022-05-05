class OwnersController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy ]


  def index
    @owners = Owner.all
  end

  def show
  end

  def new
    @owner = Owner.new
  end

  def edit
  end

  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
      if @owner.save
        format.html { redirect_to owner_url(@owner), notice: "Owner was successfully created." }
        format.json { render :show, status: :created, location: @owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @owner.update(owner_params)
        format.html { redirect_to owner_url(@owner), notice: "Owner was successfully updated." }
        format.json { render :show, status: :ok, location: @owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @owner.destroy

    respond_to do |format|
      format.html { redirect_to owners_url, notice: "Owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def owner_params
      params.require(:owner).permit(:name, :last_name, :email, :personal_id)
    end
end
