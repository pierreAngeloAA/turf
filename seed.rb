# STAFF
Admin.new("Alice", "Smith", "22222222", "Administrador").save
Admin.new("Jack", "Kim", "12121212", "Administrador").save
Admin.new("Grace", "Liu", "88888888", "Administrador").save
Admin.new("David", "Lee", "55555555", "Administrador").save

Jockey.new("Bob", "Johnson", "33333333","Corredor", 70).save
Jockey.new("Henry", "Chen", "99999999", "Corredor", 77).save
Jockey.new("Emily", "Wong", "66666666", "Corredor", 72).save

Trainer.new("Charlie", "Garcia", "44444444", "Entrenador").save
Trainer.new("Isabella", "Nguyen", "10101010", "Entrenador").save
Trainer.new("Frank", "Gonzalez", "77777777", "Entrenador").save

# CABALLOS
Horse.new('pirulita', 'pincher', 1, 'negro', Jockey.find(1)).save
Horse.new('naty', 'frensh', 8, 'blanco', Jockey.find(2)).save
Horse.new('toby', 'crio', 2, 'blanco', Jockey.find(3)).save

#HIPODROMOS 
Hippodrome.new("narnia","barranquilla",1000).save
Hippodrome.new("colechera","barranquilla",1500).save
Hippodrome.new("villasilence","barranquilla",2000).save
