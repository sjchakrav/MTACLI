class Subway
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
