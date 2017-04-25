class RealMadrid::CLI

  def initialize
    puts "Real Madrid Football Squad"

    a = Scrape.new
    @squad = a.scrape
  end

  def call
    input = nil
    while input != "exit"
      puts "What would you like to do?"
      input = gets.strip
      case input
      when "list"
        list_players
      when "exit"
        puts "See you soon"
        break
      else
        #binding.pry
        system("open '#{@squad.players[input.to_i-1].url}'")
      end
    end
  end

  def list_players
    @squad.players.each.with_index(1) do |a, i|
      puts "#{i}. #{a.name} - #{a.position} - #{a.number}"
    end
  end

end
