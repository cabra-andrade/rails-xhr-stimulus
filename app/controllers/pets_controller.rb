class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def search
    @pets = Pet.where(pets_search_params)

    render :index
  end

  private

  def pets_search_params
    params.require(:pets_search).compact_blank.permit(:name, :species)
  end
end
