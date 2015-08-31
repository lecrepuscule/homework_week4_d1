class Animal

  attr_accessor :name, :breed, :age, :gender, :favourite_toys
  
  def initialize (animal_data)
    @name = animal_data[:name]
    @breed = animal_data[:breed]
    @age = animal_data[:age]
    @gender = animal_data[:gender]
    @favourite_toys = animal_data[:favourite_toys]
  end

end