class Pet
  # Form object for Pet searches
  class Search
    # Feel free to look at Rails' documentation for this module, very useful
    include ActiveModel::Model

    # Part of ActiveModel::Model's macros is that it "hooks" your writers to the initialization.
    # This line means that Pet::Search.new can receive as argument a hash with name and species Pet::Search.new(name: "Something", species: "Something")
    attr_accessor :name, :species

    # ActiveModel::Model gives you access to the same interface you're used to in ApplicationRecord models.
    # Things like pet.valid?, pet.errors, all work the same.
    validates :name, presence: true
  end
end
