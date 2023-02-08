module Search
  class FormComponent < ViewComponent::Base
    include ActiveModel::Model

    attr_accessor :name, :species
  end
end
