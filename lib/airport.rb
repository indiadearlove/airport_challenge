require_relative 'weather.rb'
require_relative 'plane.rb'

class Airport
  
  include Weather

  def initialize
    @capacity = 20
    @planes =[]
    @weather = rand(1..10)
  end

  def plane_count
    @planes.count
  end

  def land(plane)
    raise "Bad weather" if stormy? == true
    raise "Airport is full" if full?
    @planes << plane
    plane.landed!
  end

  def take_off(plane)
    raise "Bad weather" if stormy? == true
    @planes.delete(plane)
    plane.fly!
  end

  def full?
    plane_count == @capacity
  end

end