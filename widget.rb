require 'pp'

class Widget

  # attr_accessor :stopped
  attr_reader :sku

  def initialize(sku)
    name = "JWO" # local variable, lost as soon as initialize runs
    @sku = sku
    @stopped = true
  end

  def start
    @stopped = false
  end

  def stop
    @stopped = true
  end

  def stopped?
    @stopped
  end

  def running?
    !@stopped
  end

  # def sku
  #   @sku
  # end
  #
  # def sku=(other)
  #   @sku = other
  # end


end

widget = Widget.new "JKSDF&D"
second_widget = Widget.new "YOLO2015"
widget.start
puts second_widget.running?
