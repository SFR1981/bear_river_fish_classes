require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bear.rb")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Bungle")
  end


  def test_bear_has_name
    assert_equal("Bungle", @bear.name())
  end


  def test_bear_what_has_eaten
    assert_equal([], @bear.stomach_contains())

  end

end
