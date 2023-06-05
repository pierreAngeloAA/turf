class Jockey < Staff
    def initialize(name, last_name, dni,specialty,weight)
      super(name, last_name,dni,specialty)
      @weight = weight
    end
  
    def descrip
      super
      puts "Peso: #{@weight}"
    end
  end