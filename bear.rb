class Bear

attr_reader :name
attr_accessor :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar()
    return "Roar!!"
  end

  def food_count()
    return @stomach.count()
  end

  def take_fish(fish)
    @stomach << fish
  end
end
