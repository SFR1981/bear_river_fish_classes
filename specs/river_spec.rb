require ("minitest/autorun")
require ("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Sharky")
  end


  def test_river_has_name

    assert_equal("Amazon", @river.name() )


  end

  def test_river_has_fish
    assert_equal([], @river.return_fish())

  end


  def test_river_can_have_fish_added
    @river.add_fish(@fish1)
    assert_equal([@fish1], @river.return_fish())


  end

  def test_river_can_have_fish_removed
    @river.add_fish(@fish1)
    @river.lose_fish()
    assert_equal([], @river.return_fish())

  end



end
