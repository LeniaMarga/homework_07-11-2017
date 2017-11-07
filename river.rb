class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish_population = []
  end

  def add_fish(fish)
    @fish_population.push(fish)
  end

  def fish_count
    return @fish_population.count
  end

  def fish_array
    return @fish_population
  end

  def drop_off(fish)
    @fish_population.delete(fish)
  end

  def fish_population_length
    return @fish_population.length
  end

  def clear_river()
    @fish_population.clear()
  end

  def get_fish()
    fish = @fish_population.shift()
    return fish
  end

end
