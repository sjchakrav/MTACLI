class MTAcli
  # require_relative "../data_fetchers/mta_parse"

  def call

    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "███╗   ███╗████████╗ █████╗               ███████╗██╗   ██╗██████╗ ██╗    ██╗ █████╗ ██╗   ██╗███████╗"
    puts "████╗ ████║╚══██╔══╝██╔══██╗              ██╔════╝██║   ██║██╔══██╗██║    ██║██╔══██╗╚██╗ ██╔╝╚══███╔╝"
    puts "██╔████╔██║   ██║   ███████║    █████╗    ███████╗██║   ██║██████╔╝██║ █╗ ██║███████║ ╚████╔╝   ███╔╝ "
    puts "██║╚██╔╝██║   ██║   ██╔══██║    ╚════╝    ╚════██║██║   ██║██╔══██╗██║███╗██║██╔══██║  ╚██╔╝   ███╔╝  "
    puts "██║ ╚═╝ ██║   ██║   ██║  ██║              ███████║╚██████╔╝██████╔╝╚███╔███╔╝██║  ██║   ██║   ███████╗"
    puts "╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝              ╚══════╝ ╚═════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝"
    puts "******************************************************************************************************"    
    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "\n"
    puts "An Agile Way to Make Sure You're Taking the Right Subway!"
    puts "\n"
    puts "\n"
    greet
    help
    run
  end
    
  def get_user_input
    gets.chomp.strip
  end

  def invalid
    raise StandardError
  end

  def greet
    puts "Welcome to our MTA Transit App. To get started please type 'Help' "
  end

  def subway_input
    subway_stops = MTAParse.new.stops.keys      
    user_line = get_user_input
    new_subway = subway_stops.find do |stop|
      stop == user_line || stop.end_with?(user_line)
    end

    if new_subway
      new_subway
    else
      puts "Invalid command, subway not found."
      print "Enter a subway line: "
      subway_input
    end

  end

  def user_origin
    print "Enter the number associated with the station to input your origin.\n"
    print "Enter your origin station: "
    @origin = MTAcli.get_user_input.to_i
    lines_available = MTAParse.new.stops
  end

  def user_destination
    print "Enter the number associated with the station to input your destination.\n"
    print "Enter your destination station: "
    @destination = get_user_input.to_i
  end

  def number_of_stops
    num_of_stops = @origin - @destination
    print "\n"
    print "The amount of stops in between your origin and destination are: "
    print num_of_stops.abs
    print "\n"
  end

  def lines_available
    lines_available = MTAParse.new.stops
    puts lines_available.keys
    puts "\n"
    print "Enter a subway line: "

    @station_list = lines_available[subway_input].each.with_index(1) do |station, i|
        puts "#{i}: " + station[:platform]
      end
  end

  def stations_available
    @station_list
  end

  def run
    lines_available
    stations_available
    user_origin
    user_destination
    number_of_stops
    final_options
  end

  def final_options
    print "\n"
    print "Would you like to see another line?"
    print "y[es] or n[o]: "
    input = get_user_input
    if input == "y"
      run
    elsif input == "n"
    print "Thanks for using this app!"
      exit
    else 
      puts "Invalid command"
      final_options
    end  
  end

  def help
    puts "Type 'subway' to view all available lines"
    puts "Type 'exit' to exit"
    puts "Type 'help' to view this menu again"
    puts "\n"
    input = gets.chomp.strip
    if input == "help"
      help
    elsif input == "exit"
      exit
    elsif input == "subway"
      run    
    end 
  end
   
end

