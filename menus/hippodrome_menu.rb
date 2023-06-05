def hippodrome_menu
    puts `clear`
    i = 5
      print_options([
                      '1. crear hipodromo',
                      '2. ver detalles',
                      '3. editar hipodromo',
                      '4. eliminar hipodromo',
                      '5. Salir'
                    ])
      i = gets.chomp.to_i
  
      case i
      when 1
        create_hippodrome
      when 2
        details_hippodrome
      when 3
        update_hippodrome
      when 4
        delete_hippodrome
      when 5
        exit
      else
        puts 'SELECCIONE UNA OPCIÓN CORRECTA'
      end
  end
  
  def create_hippodrome
    puts `clear`
    puts "Digite El Nombre"
    name = gets.strip
    puts "Digite La Ubicacion"
    locatio = gets.strip
    puts "Digite La Distancia"
    track_size = gets.to_i
    Hippodrome.new(name,locatio,track_size).save
  end
  
  def details_hippodrome
    puts `clear`
    Hippodrome.print_hippodromes
    
    puts "Digite el id"
    id = gets.to_i
    Hippodrome.find(id).descrip
  end
  
  def update_hippodrome
    puts `clear`
    TurfManagement.print_hippodrome
    puts "Digite el id"
    id = gets.to_i
    hippodrome = TurfManagement.find_hippodrome(id)
    
    puts "Digite los Nuevos datos"
    puts "Digite el Nombre"
    name = gets.strip
    puts "Digite La ubicacion"
    location = gets.strip
    puts "Digite el distancia de la pista"
    track_size = gets.to_i
  
  
    hippodrome.name = name
    hippodrome.location = location
    hippodrome.track_size = track_size
    puts "Nuevos datos del hipodromo"
    hippodrome.descrip
  end
  
  def delete_hippodrome
    puts `clear`
    puts "Digite el ID:"
    id = gets.chomp.to_i
    Hippodrome.find(id).delete
  end