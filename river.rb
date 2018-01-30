# Bears, River, Fish
#
# We are going to build a small ecosystem! We want to create an ecosystem made up of 3 parts: bears, river and fish. You will need a class for each of these. From this you can make instances and build your ecosystem.
#
# How our ecosystem works
#
# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
#
# A fish should have a name
#
# A bear should have a name e.g. "Yogi"
#
# A bear should have an empty stomach ( maybe an array )
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
#
# Extensions
#
# A bear could have a roar method
# A bear could have a food_count method
# A river could have a fish_count method

class River


attr_reader :name
attr_accessor :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.count()
  end

  def lose_fish(bear, fish)
    if bear.take_fish(fish)
       @fish.delete(fish)
    end
  end
end
