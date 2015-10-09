class PetBreedsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pet_breed, only: [:show, :edit, :destroy, :update]
  # GET /pet-types/1/pet-breeds
  # GET /pet-types/1/pet-breeds.json
  def index
    pet_type = PetType.find(params[:pet_type_id])
    @pet_breeds = pet_type.pet_breeds.select { | match | match.published }

    respond_to do | format |
      format.html #index.html.erb
      format.json { render json: @pet_breeds }
    end
  end

  # GET /pet-breeds/1/edit
  # GET /pet-breeds/1.json
  def show
    respond_to do | format |
      format.html #show.html.erb
      format.json { render json: @pet_breed }
    end
  end

  # GET /pet-types/1/pet-breeds/new
  def new
    pet_type = PetType.find(params[:pet_type_id])
    @pet_breed = pet_type.pet_breeds.build
    @path = [pet_type, @pet_breed]
  end

  # GET /pet-breeds/1/edit
  def edit
    @path = @pet_breed
  end

  # POST /pet-types/1/pet-breed/new
  def create
    pet_type = PetType.find(params[:pet_type_id])
    @pet_breed = pet_type.pet_breeds.create(pet_breed_params)

    respond_to do |format|
      if @pet_breed.save
        format.html { redirect_to pet_type_path(pet_type), notice: 'Pet breed was successfully created.' }
        format.json { render :show, status: :created, location: @pet_breed }
      else
        format.html { render :new }
        format.json { render json: @pet_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet-breeds/1
  # PATCH/PUT /pet-breeds/1.json
  def update
    respond_to do |format|
      if @pet_breed.update(pet_breed_params)
        format.html { redirect_to pet_type_path(@pet_breed.pet_type), notice: 'Pet breed was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_breed }
      else
        format.html { render :edit }
        format.json { render json: @pet_breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet-breeds/1
  # DELETE /pet-breeds/1.json
  def destroy
    @pet_breed.destroy
    respond_to do |format|
      format.html { redirect_to pet_type_path(@pet_breed.pet_type), notice: 'Pet breed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_breed
      @pet_breed = PetBreed.find(params[:id])
    end
    def set_pet_type_pet_breed
     	pet_type = PetType.find(params[:pet_type_id])
    	@pet_breed = pet_type.pet_breeds.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_breed_params
      params.require(:pet_breed).permit(:name, :published)
    end
end