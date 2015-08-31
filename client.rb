class Client

  def initialize (personal_data)
    @personal_data[:name] = personal_data[:name]
    @personal_data[:age] = personal_data[:age]
    @personal_data[:gender] = personal_data[:gender]
    @personal_data[:number_of_pats] = personal_data[:number_of_pats]
  end

  def adopt_animal
  end

  def give_up_animal
  end

end