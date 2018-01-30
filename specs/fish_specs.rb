require('minitest/rg')
require('minitest/autorun')
require_relative('../fish.rb')


class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Goldie")
  end

  def test_fish_name
    assert_equal("Goldie", @fish1.name)
  end
end
