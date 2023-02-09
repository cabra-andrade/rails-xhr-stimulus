class PetsController < ApplicationController
  def index
    @search = Pet::Search.new
    @pets = Pet.all
  end

  def search
    @search = Pet::Search.new(pets_search_params)
    @pets = @search.valid? ? Pet.where(pets_search_params) : Pet.none

    render :index
  end

  private

  def pets_search_params
    params.require(:pet_search).compact_blank.permit(:name, :species)
  end
end
