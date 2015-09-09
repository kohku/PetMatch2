class PetTypesController < ApplicationController
	before_action :set_pet_type, only: [:show, :edit, :update, :destroy]

  # GET /pet-types
  # GET /pet-types.json
  def index
    @pet_types = PetType.all
  end

   # GET /pet-types/1
  # GET /pet-types/1.json
  def show
  end

  # GET /pet-types/new
  def new
    @pet_type = PetType.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet_type = PetType.new(pet_params)

    respond_to do |format|
      if @pet_type.save
        format.html { redirect_to pet_types_path, notice: 'Pet type was successfully created.' }
        format.json { render :show, status: :created, location: @pet_type }
      else
        format.html { render :new }
        format.json { render json: @pet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet-types/1
  # PATCH/PUT /pet-types/1.json
  def update
    respond_to do |format|
      if @pet_type.update(pet_params)
        format.html { redirect_to pet_types_path, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_type }
      else
        format.html { render :edit }
        format.json { render json: @pet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet-types/1
  # DELETE /pet-types/1.json
  def destroy
    @pet_type.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_type
      @pet_type = PetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet_type).permit(:name, :published)
    end

end
