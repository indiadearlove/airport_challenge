class Airport
  
  def initialize
    @capacity = 20
    @planes =[]
    @weather = rand(1..10)
    puts @weather
  end

  def plane_count
    @planes.count
  end

  def land(plane)
    raise "Bad weather" if stormy? == true
    raise "Airport is full" if full?
    @planes << plane
  end

  def take_off(plane)
    raise "Bad weather" if stormy? == true
    @planes.delete(plane)
  end

  def full?
    plane_count == @capacity
  end

  def stormy?
    if @weather == 1
      puts 'stormy'
      @stormy = true
    else
      puts 'sunny'
      @stormy = false
    end
  
  end

end