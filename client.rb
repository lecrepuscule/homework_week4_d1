class Client

  attr_accessor :name, :age, :gender, :number_of_pets

  @@client_count = 0

  def initialize (personal_data={})
    @name = personal_data[:name]
    @age = personal_data[:age]
    @gender = personal_data[:gender]
    @number_of_pets = personal_data[:number_of_pets]
    @@client_count += 1
  end

  def adopt_animal
    @number_of_pets += 1s
  end

  def give_up_animal
    @number_of_pets >=1 ? @number_of_pets -= 1 : puts "no pet to give up!"
  end

  def self.client_count
    @@client_count
  end

end