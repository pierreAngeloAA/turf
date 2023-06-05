def career_menu
    i = 5
      print_options([
                      '1. crear carrera',
                      '2. ver detalles',
                      '3. editar carera',
                      '4. eliminar carrera',
                      '5. Salir'
                    ])
      i = gets.chomp.to_i
  
      case i
      when 1
        create_career
      when 2
        details_career
      when 3
        update_career
      when 4
        delete_career
      when 5
        exit
      else
        puts 'SELECCIONE UNA OPCIÓN CORRECTA'
      end
end
  
def create_career
    binomial = create_binomial
    Hippodrome.print_hippodromes  
    puts "Digite el Id del hipodromo"
    id = gets.to_i
    Hippodrome.find(id)
    Career.new(Hippodrome.find(id))
end
  
def details_career
    TurfManagement.print_career
    
    puts "Digite el id"
    id = gets.to_i
    TurfManagement.find_career(id).descrip
end
  
def update_career
    TurfManagement.print_career
    puts "Digite el id"
    id = gets.to_i
    career = TurfManagement.find_career(id)
    
    puts "Digite los Nuevos datos"
    puts "Digite el Nombre"
    name = gets.strip
    puts "Digite La ubicacion"
    location = gets.strip
    puts "Digite el distancia de la pista"
    track_size = gets.to_i
  
  
    career.name = name
    career.location = location
    career.track_size = track_size
    puts "Nuevos datos del hipodromo"
    career.descrip
end
  
def delete_career
    puts "Digite el ID:"
    id = gets.chomp.to_i
    TurfManagement.delete_career(id)
end

def create_binomial
  TurfManagement.print_jockeys
  puts "Digite El Id Del Corredor:"
  id = gets.chomp.to_i
  rider = Rider.find(id)
  Binomial.new()
end

def binomials
  bnomials  = []
  i = 3
    print_options([
                    '1. agregar binomial',
                    '2. guardar',
                  ])
    i = gets.chomp.to_i

    case i
    when 1
      binomials.push(create_binomial)
    when 2
      binomials
    else
      puts 'SELECCIONE UNA OPCIÓN CORRECTA'
    end
end
