species_array = Pet::Species::INFO.keys

print 'Creating pets'
100.times do
  print '.'
  species = species_array.sample
  Pet.create(name: Faker::Creature::Cat.name, species: species)
end
puts ''
