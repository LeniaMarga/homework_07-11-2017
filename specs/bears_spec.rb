require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test

  def setup
    @yogi = Bear.new('Yogi')
    @amazon = River.new('Amazon')
    @nemo = Fish.new('nemo')
  end

  def test_bear_name
    assert_equal('Yogi', @yogi.name)
  end
=begin
  def test_empty_stomach
    @yogi.add_fish(@nemo)
    @yogi.add_fish(@sharky)
    @yogi.add_fish(@bubbles)
    assert_equal([@namo, @sharky, @bubbles], @yogi.add_fish())
  end
=end
  def test_pick_fish_from_river()
    @amazon.add_fish(@nemo)
    @yogi.pick_fish_from_river(@amazon)
    assert_equal(1, @yogi.stomach_fish_count())
    assert_equal(0, @amazon.fish_count())
  end

end
