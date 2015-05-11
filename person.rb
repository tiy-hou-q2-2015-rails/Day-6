class Person

  attr_reader :first_name, :last_name

  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def full_name
    [last_name, first_name].join(", ")
  end


end

jwo = Person.new "Jesse","Wolgamott"
puts jwo.full_name
