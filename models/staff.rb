class Staff
    attr_accessor :id, :name, :last_name, :dni, :specialty
  
    @@number_of_staff = 0
  
    def initialize(name, last_name, dni,specialty)
      @@number_of_staff += 1
      @id = @@number_of_staff
      @name = name
      @last_name = last_name
      @dni = dni
      @specialty = specialty
    end
  
    def descrip
      puts  "Id: #{@id}",
            "Nombre: #{@name}",
            "Apellido: #{@last_name}",
            "Dni: #{@dni}",
            "Especialidad: #{@specialty}"
    end
  
    def save
      TurfManagement.add(self, TurfManagement.staff)
    end
  
    def delete
      TurfManagement.staff = TurfManagement.delete(@id, TurfManagement.staff)
    end
  
    def self.find(id)
      TurfManagement.find(id, TurfManagement.staff)
    end
  
    def self.print
      TurfManagement.print(TurfManagement.staff)
    end

  end
  
  
    
  