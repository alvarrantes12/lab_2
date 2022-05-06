class CreateOwnersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_create_owner, only: %i[ show edit update destroy ]

  # GET /create_owners or /create_owners.json
  def index
    @create_owners = CreateOwner.all
  end

  # GET /create_owners/1 or /create_owners/1.json
  def show
  end

  # GET /create_owners/new
  def new
    @create_owner = CreateOwner.new
  end

  # GET /create_owners/1/edit
  def edit
  end

  # POST /create_owners or /create_owners.json
  def create
    @create_owner = CreateOwner.new(create_owner_params)

    respond_to do |format|
      if @create_owner.save
        format.html { redirect_to create_owner_url(@create_owner), notice: "Create owner was successfully created." }
        format.json { render :show, status: :created, location: @create_owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_owners/1 or /create_owners/1.json
  def update
    respond_to do |format|
      if @create_owner.update(create_owner_params)
        format.html { redirect_to create_owner_url(@create_owner), notice: "Create owner was successfully updated." }
        format.json { render :show, status: :ok, location: @create_owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_owners/1 or /create_owners/1.json
  def destroy
    @create_owner.destroy

    respond_to do |format|
      format.html { redirect_to create_owners_url, notice: "Create owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_owner
      @create_owner = CreateOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_owner_params
      params.require(:create_owner).permit(:nombre, :apellido, :correo, :numeroIdentificacion)
    end
end
