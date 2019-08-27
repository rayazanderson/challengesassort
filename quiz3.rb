class Pet
attr_accessor :dog

  def initialize(dog)
    self.dog = dog
  end
end

pet = Pet.new(:golden_retriever)
puts pet
puts pet.dog



