module Search
  class ListComponent < ViewComponent::Base
    attr_reader :pets

    def initialize(pets)
      @pets = pets
      super
    end
  end
end
