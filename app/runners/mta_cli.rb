class MTAcli

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
    run
  end
    
  def get_user_input
    gets.chomp.strip
  end

  def subway_input(user_input)
    subway_stops = MTAParse.new.stops.keys
     = get_user_input
    subway_stops.each do |subway|
      placeholder == user_input
      subway[-1] = new_subway
      puts subway['#{new_subway}']
      binding.pry
    end 
  end

  def platform_input(user_input)
    platform_stops = MTAParse.new.stops
    subway_input = get_user_input
    platform_stops.each_with_index do |i, platform|

      puts "#{i} "
    end
  end

  def invalid
    raise StandardError
  end

  def run
    print "Enter a subway line: "
    print "Would you like to switch subway lines?"
    print "y[es]/ n[o]"
    print "Enter your origin station: "
    #method call on origin match case iterating through stations array
    print "Enter your destination station: "
    input
    if input == "help"
      help
    elsif input == "exit"
      exit
    else
      subway_line(input)
    end
    run
  end

  def subway_line(input)
  
  end

  def help
    puts "Type 'exit' to exit"
    puts "Type 'help' to view this menu again"
  end

end

