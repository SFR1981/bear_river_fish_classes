require ("minitest/autorun")
require ("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end


  def test_river_has_name

    assert_equal("Amazon", @river.name() )


  end

  def test_river_has_fish
    assert_equal([], @river.return_fish())

  end


  def test_river_can_have_fish_added
    @river.add_fish("Sharky")
    assert_equal(["Sharky"], @river.return_fish())


  end



end
