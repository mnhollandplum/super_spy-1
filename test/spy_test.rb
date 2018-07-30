require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'

class SpyTest < Minitest::Test
  def test_a_spy_has_attributes
    spy = Spy.new("Cate Archer", 100_000)

    assert_equal "Cate Archer", spy.name
    assert_equal 100000, spy.salary
  end

  def test_a_spy_has_different_attributes
    spy = Spy.new("Maxwell Smart", 75_000)

    assert_equal "Maxwell Smart", spy.name
    assert_equal 75000, spy.salary
  end

  def test_a_spy_starts_with_no_licenses
    spy = Spy.new("Cate Archer", 100_000)

    assert_equal [], spy.licenses
  end
end
