class Horse
    attr_accessor :id, :name, :race, :weight, :color, :speed, :owner
    @@number_of_horse = 0
  
    def initialize(name, race, weight, color, owner)
      @@number_of_horse += 1
      @id = @@number_of_horse
      @name = name
      @race = race
      @weight = weight
      @color = color
      @speed = rand(68..72).to_i
      @owner = owner
    end
  
    def descrip
      puts "Id: #{@id}",
      "Nombre: #{@name}",
      "raza: #{@race}",
      "peso(kg): #{@weight}",
      "color: #{@color}",
      "Dueño: #{@owner.name}"   
    end
    
    def save
      TurfManagement.add(self, TurfManagement.horses)
    end
  
    def delete
      TurfManagement.horses = TurfManagement.delete(@id, TurfManagement.horses)
    end
  
    def self.find(id)
      TurfManagement.find(id, TurfManagement.horses)
    end
  
    def self.print_horses
      TurfManagement.print(TurfManagement.horses)
    end
  end
  