class Client

  attr_accessor :name, :age, :gender, :number_of_pats

  def initialize (personal_data)
    @name = personal_data[:name]
    @age = personal_data[:age]
    @gender = personal_data[:gender]
    @number_of_pats = personal_data[:number_of_pats]
  end

  def adopt_animal
  end

  def give_up_animal
  end

end