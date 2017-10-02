class SportsTeam
  attr_accessor :team, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team = team_name
    @players = players
    @coach = coach
    @points = points
  end

  #   def team_name
  #     return @team
  #   end
  #
  #   def team_players
  #     return @players
  #   end
  #
  #   def coach_name
  #     return @coach
  #   end
  #
  # def new_coach_name(name)
  #   @coach = name
  # end

  def check_player(name)
    @players.include?(name)
  end

  def points_won()
    @points += 3
  end

  def points_lost()
    @points -= 3
  end

end
