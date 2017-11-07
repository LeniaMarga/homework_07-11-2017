require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup()
    @amazon = River.new('Amazon')
  end

  def test_fish_array
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@sharky)
    @amazon.add_fish(@bubbles)
    assert_equal([@namo, @sharky, @bubbles], @amazon.fish_array)
  end

  def test_fish_population
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@sharky)
    @amazon.add_fish(@bubbles)
    assert_equal(3, @amazon.fish_count())
  end

  def test_get_fish_from_the_river()
    @amazon.add_fish(@nemo)
    @amazon.add_fish(@sharky)
    fish = @amazon.get_fish()
    assert_equal(1, @amazon.fish_population_length())
  end

end
