require 'csv'
require 'nokogiri'
require 'open-uri'

class MTAParse

  # MTA_DATA = "http://web.mta.info/developers/data/nyct/subway/google_transit.zip"

  # def initialize(url)
  #   # @html = Nokogiri::HTML(open(url))
  #   #http://www.mta.info/status/serviceStatus.txt
  #   #status updates
  # end

  def stops(stopTimes)
    file_path = "google_transit/stops.csv"
    CSV.open(File.path(file_path), "w") do |csv|
      binding.pry
      #for every row, index into the first element and third element
      #generate stop_id and stop_name from there
      csv << ["id", "line", "name"]
        binding.pry
        CSV.parse()
        #<---- logic for get_input methods ---->
          #subway stops
            #route.num_of_stops if row[2] != row[2]
              #if row[2]
      #for the first index character of the string of stop_id, subway stop will be named
       LINES << row[0][0]
    end
  end
end

#A20141207SAT_053600_3..S01R,08:56:00,08:56:00,301S,1,,0,0,
#301S

# input
# subway line
# origin
# destination
# {:subway_line => [{:station_id, :time}, {:station_id, :time}]

# [{:station_id, :time, :stop_name}].each do |stop|
#   # return "you're an idiot" if origin == destination
#   if stop == origin
#     time1 = stop[:time]
#   end
#   if stop == destination
#     time2 = stop[:time]
#   end
#   time2 - time1