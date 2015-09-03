class PetTypesController < ApplicationController

  # GET /pet-types
  # GET /pet-types.json
  def index
    @pet_types = PetType.all
  end
end
