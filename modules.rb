module Stoppable
  

  def stop!
    @stopped = true
  end

  def start!
    @stopped = false
  end

  def running?
    !@stopped
  end

end

module Eatable
  def eat!
    "eating.."
  end
end


class Widget
  include Stoppable
end

class Cheatah
  include Stoppable
  include Eatable
end


gear = Widget.new
gear.stop!
gear.start!
puts gear.running?

cheatah = Cheatah.new
cheatah.stop!
cheatah.start!
puts cheatah.eat!
puts cheatah.running?
