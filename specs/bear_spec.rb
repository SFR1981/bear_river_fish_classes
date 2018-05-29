require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class BearTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Bungle", "Grizzly")
    @fish1 = Fish.new("Sharky")
    @fish2 = Fish.new("George")
    @fish3 = Fish.new("Nemo")
    @fish4 = Fish.new("Barry")
  end


  def test_bear_has_name
    assert_equal("Bungle", @bear.name())
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type())
  end


  def test_bear_what_has_eaten
    assert_equal([], @bear.stomach_contains())

  end

  def test_bear_can_take_a_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish4)
    @bear.take_a_fish(@river)
    assert_equal(1, @bear.stomach_contains().length())

    assert_equal(3, @river.return_fish.length())


  end

end
