class Line
require 'pry'

  SUBWAYS = []
  attr_accessor :name, :add_destination
  attr_reader :station_name, :line_stop_num, :train_status



  def name
  	@name  
  end

  def add_origin

  end

  def add_destination

  end

  def station_name

  end

  def line_stop_num

  end

  def train_status
  	#nokogiri scrape of xml mta.info/status
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

