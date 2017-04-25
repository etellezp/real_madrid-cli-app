class Squad
  attr_reader :players

  def initialize
    @players = []
  end

  def players
    @players.dup.freeze
  end

  def add_player(player)
    if !player.is_a?(Player)
      raise StandardError, "must be a player"
    else
      @players << player
    end
  end

end
