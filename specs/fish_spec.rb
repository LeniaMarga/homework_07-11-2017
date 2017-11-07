require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new('fish')
    @nemo = Fish.new('nemo')
    @sharky = Fish.new('sharky')
    @bubbles = Fish.new('bubbles')
    @tad = Fish.new('Tad')
  end

  def test_fish_class
    assert_equal(Fish, @nemo.class)
  end

  def test_fish_name
    assert_equal('sharky', @sharky.name)
  end

end
