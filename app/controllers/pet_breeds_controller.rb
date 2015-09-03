class PetBreedsController < ApplicationController

  # GET /pets
  # GET /pets.json
  def index
    @pets = PetBreeds.all
  end
end
