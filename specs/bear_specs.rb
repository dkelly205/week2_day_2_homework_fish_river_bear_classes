require('minitest/rg')
require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')



class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @fish = Fish.new("Goldie")
  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_roar
    assert_equal("Roar!!", @bear.roar)
  end

  def test_food_count
    assert_equal(0, @bear.food_count())
  end

  def test_take_fish
    @bear.take_fish(@fish)
    @bear.take_fish(@fish)
    @bear.take_fish(@fish)
    assert_equal(3, @bear.food_count())
  end


end
