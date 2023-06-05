class Career
    attr_accessor :id, :hippodrome, :list_binomial, :racetrack, :date, :type_career
    @@number_of_carrer = 0
  
  
  def initialize(hippodrome,list_binomial)
    @@number_of_carrer += 1
    @id = @@number_of_carrer
    @date = Time.new
    @list_binomial = []
    @hippodrome = hippodrome
    @type_career
  end
  
  def save
    TurfManagement.add(self, TurfManagement.careers)
  end

  def delete
    TurfManagement.careers = TurfManagement.delete(@id, TurfManagement.careers)
  end

  def self.find(id)
    TurfManagement.find(id, TurfManagement.careers)
  end

  def self.print_careers
    TurfManagement.print(TurfManagement.careers)
  end
end
