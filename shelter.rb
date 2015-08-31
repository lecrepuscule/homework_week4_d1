class Shelter

  attr_reader :name
  attr_accessor :clients, :animals

  CAPACITY = 50

  def initialize (name)
    @name = name
    @clients = {
      id: nil
      client_data: {}
    }
    @animals = {}
  end

  def register_client (client)
  end

  def take_in_animal (animal)
  end

  def give_out_animal (animal)
  end

end