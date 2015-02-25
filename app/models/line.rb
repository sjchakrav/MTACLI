class Line
require 'pry'
include GetUserInput
  STOPS = []

  attr_reader:station, :add_origin, :add_destination, :stations_available, :num_of_stops_in_between

  # def initialize
  #   @origin
  #   @destination
  #   @allstops
  # end

  # def find_by_name
  #  @sub_input = MTAcli.subway_input
  # end

  # def all_stops
  #   @allstops = MTAcli.stations_available
  # end

  # def add_origin
    
  #   p rint "Enter the number associated with the station to input your origin.\n"
  #   print "Enter your origin station: "
  #   @origin = get_user_input.to_i
  #   lines_available = MTAParse.new.stops   
  # end

  # def add_destination
  #   @destination = MTAcli.user_destination
  # end

  # def num_of_stops_in_between
  #   @numstops = MTAcli.number_of_stops
  # end

  # def user_origin
  #   print "Enter the number associated with the station to input your origin.\n"
  #   print "Enter your origin station: "
  #   @origin = get_user_input.to_i
  #   lines_available = MTAParse.new.stops
  # end

  # def user_destination
  #   print "Enter the number associated with the station to input your destination.\n"
  #   print "Enter your destination station: "
  #   @destination = MTAcli.get_user_input.to_i
  # end

  #  def number_of_stops
  #   num_of_stops = @origin - @destination
  #   print "\n"
  #   print "The amount of stops in between your origin and destination are: "
  #   print num_of_stops.abs
  #   print "\n"
  # end

  # def lines_available
  #   @lines_available = MTAParse.new.stops
  #   puts lines_available.keys
  #   puts "\n"
  #   print "Enter a subway line: "
  # end

  # def stations_available
  #   station_list = @lines_available[MTAcli.subway_input].each.with_index(1) do |station, i|
  #       puts "#{i}: " + station[:platform]
  #   end
  # end


  
end

# data ={"Subway 1", [{:id=>"140S", :platform=>"South Ferry Loop"}]}

# Line.new(name, stops)


# Line 
# Station platform, id, origin

# Line.all # => Lines all of them
# one = Line.find_by_name('1')
# one.stops # = > Stations all of them

# User knows its start, end and line
# Line knows its stops 
# Line can count stops from origin and destination
# steve = User.new(origin: "South Ferry", destination: "Christopher Street")
# Line.stops_for_user(steve) #=> 9

