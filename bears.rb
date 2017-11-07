class Bear
  attr_accessor :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def add_fish(fish)
    @fish_population.push(fish)
  end

  def pick_fish(fish)
    @stomach.push(fish)
  end

  def fish_count
    return @fish_population.count
  end

  def stomach_fish_count
    return @stomach.count
  end

  def pick_fish_from_river(river)
    fish = river.get_fish()
    @stomach.push(fish)
  end

end
