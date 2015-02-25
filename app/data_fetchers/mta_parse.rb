require 'csv'
require 'nokogiri'
require 'open-uri'
require 'set'
include GetUserInput

class MTAParse

# MTA_DATA = "http://web.mta.info/developers/data/nyct/subway/google_transit.zip"
# def initialize(url)
#   # @html = Nokogiri::HTML(open(url))
#   #http://www.mta.info/status/serviceStatus.txt
#   #status updates
# end

  def row_to_stop(row)
    subway_id = row[0].scan(/\d+/).first
    platform_name = row[2]

    {:id => subway_id, :platform => platform_name}
  end

  def stops
    file_path = "google_transit/stops.csv"    
    # subway = {}
    subway_hash = CSV.foreach(File.path(file_path)).with_object({}) do |row, subway|
    # Subway 1 {[{:id=>"101"}, {:platform=>"Van Cortlandt Park - 242 St"}]}
    # stop_array = []
    subway_name = row[0][0]
    subway_line = "Subway #{subway_name}"

    stop = row_to_stop(row)
    # stop_array << stop

    subway[subway_line] ||= []
    subway[subway_line] << stop
    subway[subway_line].uniq!
    end
  end
end