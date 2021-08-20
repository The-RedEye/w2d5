require "byebug"
class Flight

  attr_reader :passengers 
  
  def initialize(flight_num, capacity)
    @flight_number = flight_num
    @capacity = capacity
    @passengers = []
  end

  def full?
    if @passengers.length == @capacity
      return true
    end

    false
  end

  def board_passenger(passenger)
    if !full? && passenger.has_flight?(@flight_number)
      @passengers << passenger
    end
  end

  def list_passengers
    arr = []
    @passengers.each {|ele| arr<<ele.name}
    arr
  end

  def [] (idx)
    @passengers[idx]
  end

  def << (passenger)
    board_passenger(passenger)
  end

end # end Flight Class