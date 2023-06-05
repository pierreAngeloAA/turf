def horse_menu
    i = 5
      print_options([
                      '1. crear caballo',
                      '2. ver detalles',
                      '3. editar caballo',
                      '4. eliminar caballo',
                      '5. Salir'
                    ])
      i = gets.chomp.to_i
  
      case i
      when 1
        create_horse
      when 2
        details_horses
      when 3
        update_horse
      when 4
        delete_horse
      when 5
        exit
      else
        puts 'SELECCIONE UNA OPCIÓN CORRECTA'
      end
  end
  
  def create_horse
    puts "Digite El Nombre"
    name = gets.strip
    puts "Digite La Raza"
    race = gets.strip
    puts "Digite El Peso"
    weight = gets.to_i
    puts "Digite El Color"
    color = gets.strip
    Horse.print_horses
    puts "Digite El Id Del Dueño"
    id = gets.to_i
    Staff.print_staff
    owner = Staff.find(id)
    horse = Horse.new(name,race,weight,color,owner)
    horse.descrip
    horse.save
  end
  
  def details_horses
    Horse.print_horses
    
    puts "Digite el id"
    id = gets.to_i
    horse = Horse.find(id)
    horse.descrip
  end
  
  def update_horse
    Horse.print_horses
    puts "Digite el id"
    id = gets.to_i
    horse = Horse.find(id)
    
    puts "Digite los Nuevos datos"
    puts "Digite el Nombre"
    name = gets.strip
    puts "Digite La Raza"
    race = gets.strip
    puts "Digite el Peso"
    weight = gets.to_i
    puts "Digite el Color"
    color = gets.strip
  
    horse.name = name
    horse.race = race
    horse.weight = weight
    horse.color = color
    puts "Nuevos datos del caballo"
    horse.descrip
  end
  
  def delete_horse
    puts "Digite el ID:"
    id = gets.chomp.to_i
    Horse.find(id).delete
  end
  
    