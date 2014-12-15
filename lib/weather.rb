module Weather
  
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