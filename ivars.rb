class Widget

  attr_accessor :sku

  def initialize(sku)
    self.sku = sku
    self.stopped = true
    @stopped = true
  end

  def start
    self.stopped = false # calls `self.stopped=`
    stopped = true #local
  end

  def stop
    name = "YOLO" # local
    self.stopped = true
  end

  def stopped # getter
    return @stopped
  end

  def stopped=(other) # setter
    @stopped = other
  end

end

widget = Widget.new "JKSDF&D"
puts widget.sku
widget.start
widget.stop
widget.start
puts widget.stopped
