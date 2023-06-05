class Admin < Staff
 
  def initialize(name, last_name, dni,specialty)
    super(name, last_name, dni, specialty)
  end
  
  def descrip
    super
  end
    
  def save
    super
  end
end