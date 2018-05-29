require ("minitest/autorun")
require ("minitest/rg")
require_relative("../river.rb")


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



end
