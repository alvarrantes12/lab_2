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
        BreedService.new.save_breed
        format.html { redirect_to owner_url(@owner), notice: "Owner was successfully created." }
        
      else
        render :edit, status: :created, location: @owner
        
        
      end
    end
  end

  def update
    respond_to do |format|
      if @owner.update(owner_params)
        redirect_to owner_url(@owner), notice: "Owner was successfully updated." 
      else
        format.html { render :new, status: :unprocessable_entity }
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
  
    def set_owner
      @owner = Owner.find(params[:id])
    end

   
    def owner_params
      params.require(:owner).permit(:name, :last_name, :e_mail, :personal_id)
    end
end
