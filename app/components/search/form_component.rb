module Search
  class FormComponent < ViewComponent::Base
    attr_reader :search

    def initialize(search)
      @search = search
      super
    end
  end
end
