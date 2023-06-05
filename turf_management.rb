class TurfManagement
    @@staff = []
    @@horses = []
    @@hippodromes = []
    @@careers = []
    
  
    # GETTERS DE CLASE
    def self.staff
      @@staff
    end
    
     def self.horses
      @@horses
    end
    
    def self.hippodromes
      @@hippodromes
    end
    
    def self.careers
      @@careers
    end
    
    # SETTERS DE CLASE
    def self.staff=list
      @@staff = list
    end
   
    def self.horses=list
      @@horses = list
    end
  
    def self.hippodromes=list
      @@hippodromes = list
    end
  
    def self.careers=list
      @@careers = list
    end
    #METODOS DE CLASE
    def self.add(item, list)
      list.push(item)
    end
  
    def self.find(id, list)
      list.find { |r| r.id == id }
    end
  
    def self.delete(id, list)
      list.select { |i| i.id != id }
    end
  
    def self.print(list)
      list.each { |i| i.descrip }
    end
  
    def self.my_horses(owner)
      @@horses.select { |h| h.owner.id == owner.id }
    end

    def self.print_jockeys
     print(@staff.select { |staff| staff.is_a?(Jockey)})
    end
  end
  