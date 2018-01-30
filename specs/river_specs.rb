require('minitest/rg')
require('minitest/autorun')
require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon", ["Goldie", "Nemo", "Dorie", "Archie", "Jimmy", "Barry"])
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_how_many_fish
    assert_equal(6, @river.fish_count())
  end

  def test_lose_fish ####double check this in class###
    @bear.take_fish("Goldie")
    @river.lose_fish(@bear, "Goldie")
    assert_equal(5, @river.fish_count())
  end

end
