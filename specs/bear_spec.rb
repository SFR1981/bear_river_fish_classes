require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Bungle", "Grizzly")
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
    @bear.take_fish()


  end

end
