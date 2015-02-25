class Line
require 'pry'
  STOPS = []

  attr_accessor :station, :add_origin, :add_destination
  attr_reader  :line_stop_num

  def initialize
    @station = station
    @user = user
    STOPS << self
  end

  def find_by_name(input)
    #match case
    input = MtaCLI.get_user_input
    name = MTAParse.new
    help = MtaCLI.help
    #check the hash
      #given the user's input check the keys
        #if one of the keys match 
      if input == name.keys(input)
      elsif input != name.keys(input)
        puts "You're an idiot."
      elsif input == input(MtaCLI.help)
        options
      else
        raise StandError
      end
    #from the hash
  end

  def self.list_of_stops
    STOPS.count
  end 

  def number_of_stops_for_user
    #difference between origin and destination

  end


  def add_origin(origin)
    subway_hash = MTAParse.new.stops.keys
    subway_hash.each do |subway|
      origin = MTACli.get_user_input
      if origin == subway
        STOPS << origin
      else
      end
    end 
  end

  def add_destination(destination)
    #defer get input
  end

  def num_of_stops_in_between
    #dshow station num in hash
  end

  
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

