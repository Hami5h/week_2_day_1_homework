require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < Minitest::Test
  @sports_team

  def setup
    @sports_team = SportsTeam.new('Meikle', ['John', 'Gordon', 'Robert'], 'James', 0)
  end

  def test_team_name
    assert_equal('Meikle', @sports_team.team)
  end

  def test_team_players
    assert_equal(['John', 'Gordon', 'Robert'], @sports_team.players)
  end

  def test_coach_name
    assert_equal('James', @sports_team.coach)
  end

  def test_set_new_coach_name
    @sports_team.coach = 'Helen'
    assert_equal('Helen', @sports_team.coach)
  end

  def test_add_new_player
    @sports_team.players << 'Hendry'
    assert_equal(['John', 'Gordon', 'Robert', 'Hendry'], @sports_team.players)
  end

  def test_check_player_in_array__player_found
    assert_equal(true, @sports_team.check_player('Gordon'))
  end

  def test_check_player_in_array__player_not_found
    assert_equal(false, @sports_team.check_player('banana'))
  end

  def test_team_points_won
    @sports_team.points_won()
    assert_equal(3, @sports_team.points)
  end

  def test_team_points_lost
    @sports_team.points_lost()
    assert_equal(-3, @sports_team.points)
  end

end
