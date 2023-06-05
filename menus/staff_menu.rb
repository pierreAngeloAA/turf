def staff_menu
    puts `clear`
    i = 0 fil
    while i != 5
      print_options([
                      '1. agregar staff',
                      '2. ver detalles',
                      '3. editar staff',
                      '4. eliminar staff',
                      '5. Atras'
                    ])
      i = gets.chomp.to_i
  
      case i
      when 1
        create_staff
      when 2
        details_staff
      when 3
        update_staff
      when 4
        delete_staff
      else
        puts 'SELECCIONE UNA OPCIÓN CORRECTA'
      end
    end
  end
  
  def create_staff
    puts `clear`
    puts "Digite El Nombre"
    name = gets.strip
    puts "Digite El Apellido"
    last_name = gets.strip
    puts "Digite El DNI"
    dni = gets.to_i
    puts "Digite La Especialidad"
    specialty = gets.strip
    case specialty
    when "corredor"
      puts "Digite La Peso"
      weight = gets.strip
      Jockey.new(name,last_name,dni,specialty,weight).save
    when "entrenador"
      Trainer.new(name,last_name,dni,specialty).save
    when "administrador"
      Admin.new(name,last_name,dni,specialty).save
    else
      puts "Especialidad No Encontrada!"
    end
  end
  
  def details_staff
    puts `clear`
    Staff.print_staff
    
    puts "Digite el id"
    id = gets.to_i
    staff = Staff.find(id)
    if staff != nil
      staff.descrip
    else 
      puts "staff no encontrado!"
    end
  end
  
  def update_staff
    puts `clear`
    Staff.print_staff
    puts "Digite el id"
    id = gets.to_i
    staff = Staff.find(id)
    if staff != nil
      puts "Digite los Nuevos datos"
      puts "Digite el Nombre"
      name = gets.to_s
      puts "Digite el Apellido"
      last_name = gets.to_s
      puts "Digite el DNI"
      dni = gets.to_i
      staff.name = name
      staff.last_name = last_name
      staff.dni = dni
    else
      puts "Staff no encontado!"
    end
  end
  
  def delete_staff
    puts `clear`
    Staff.print_staff
    puts "Digite el ID:"
    id = gets.chomp.to_i
    Staff.find(id).delete
  end
  
  