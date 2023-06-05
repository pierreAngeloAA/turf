def crud
    i = 0
    while i != 7
      print_options([
                      '1. CRUD-STAFF',
                      '2. CRUD-Caballo',
                      '3. CRUD-Hipodromo',
                      '4. CRUD-Carrera',
                      '5. CRUD-Apuesta',
                      '6. Informacion',
                      '7. Salir'
                    ])
      i = gets.chomp.to_i
  
      case i
      when 1
        staff_menu
      when 2
        horse_menu
      when 3
        hippodrome_menu
      when 4
        career_menu
      when 5
        bet_menu
      when 6
        information_menu
      when 6
        exit
      else
        puts 'SELECCIONE UNA OPCIÓN CORRECTA'
      end
    end
  end
  
  
  def print_options(options)
    puts 'Seleccione una opcion:'
    options.each { |option| puts option }
  end