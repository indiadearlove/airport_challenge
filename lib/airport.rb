class Airport
  
  def initialize
    @capacity = 20
    @planes =[]
  end

  def plane_count
    @planes.count
  end

  def land(plane)
    raise "Airport is full" if full?
    @planes << plane
  end

  def take_off(plane)
    raise "Bad weather" if @stormy == false
    @planes.delete(plane)
  end

  def full?
    plane_count == @capacity
  end

  def stormy
    @weather = weather.rand(1..10)
    if @weather == 1
      @stormy = true
    else
      @stormy = false
    end

  end

end