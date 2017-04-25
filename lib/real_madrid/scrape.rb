class Scrape
  attr_accessor :squad, :doc

  def initialize
    @squad = Squad.new
    @doc = Nokogiri::HTML(open("http://www.realmadrid.com/en/football/squad"))
  end

  def scrape
    scrape_squad
    @squad
  end

  def scrape_squad
    @doc.search(".m_players_list .m_player_info_wrapper")[0..23].collect do |player_info|
      player = Player.new
      
      player.name = player_info.css(".m_player_info").css("a strong").text.strip
      player.position = player_info.css(".m_player_info").css("span").text.strip
      player.number = player_info.css(".m_player_info .m_player_info_number").css("strong").text.strip
      player.url = "http://www.realmadrid.com" + player_info.css(".m_player_info").css(".m_player_info_content").css("a").attr("href").text

      @squad.add_player(player)
    end
  end

end
