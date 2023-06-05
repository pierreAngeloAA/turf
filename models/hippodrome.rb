class Hippodrome
    attr_accessor :id, :name, :location, :track_size
       @@number_of_hippodrome = 0
     
     def initialize(name, location, track_size)
       @@number_of_hippodrome += 1
       @id = @@number_of_hippodrome
       @name = name
       @location = location
       @track_size = track_size
     end
   
     def descrip
       puts  "Id: #{@id}",
             "name: #{@name}",
             "ubicacion: #{@location}",
             "distancia de la carrera: #{@track_size}"
     end
       
     def save
       TurfManagement.add(self, TurfManagement.hippodromes)
     end
   
     def delete
       TurfManagement.hippodromes = TurfManagement.delete(@id, TurfManagement.hippdoromes)
     end
   
     def self.find(id)
       TurfManagement.find(id, TurfManagement.hippodromes)
     end
   
     def self.print_hippodromes
       TurfManagement.print(TurfManagement.hippodromes)
     end
   
   end