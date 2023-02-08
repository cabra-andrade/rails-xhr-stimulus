class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def search
    @pets = Pet.where(pets_search_params)

    render :index
  end

  private

  helper_method :pets_search_params

  def pets_search_params
    params.require(:search_form_component).compact_blank.permit(:name, :species)
  end
end
