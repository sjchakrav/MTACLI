class MtaCLI

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

  def run
    print "Enter a subway line: "
    input = get_user_input
    print "Would you like to switch subway lines?"
    print "y[es]/ n[o]"
    run ? input == "y" : "n"
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
    # search_term = input.split(" ")[0]
    # puts "Your search term was #{search_term}, I am searching..."
    # url = "https://twitter.com/search?q=#{search_term}&src=typd&f=realtime"
    # tweet = ExampleScraper.new(url).example_method.sample
    # puts "Thank you for your patience. I found this on Twitter:"
    # puts tweet.example

    #defer to this method every time user inputs a train line
  end

  def help
    puts "Type 'exit' to exit"
    puts "Type 'help' to view this menu again"
  end

end

