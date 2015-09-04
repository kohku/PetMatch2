class PetBreedsController < ApplicationController

  # GET /pet-breeds
  # GET /pet-breeds.json
  def index
    @pet_types = PetBreed.all
  end

    # GET /pet-types/new
  def new
    @pet_breed = PetBreed.new
  end

end
