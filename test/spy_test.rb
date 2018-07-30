require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'
require './lib/license.rb'

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

  def test_can_add_license_to_spy
    spy = Spy.new("Cate Archer", 100_000)
    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    spy.add_license(license_1)
    spy.add_license(license_2)
    assert_equal ["to kill", "to chill"], spy.licenses
  end

  def test_licenses_are_added_successfully
    spy = Spy.new("Cate Archer", 100_000)
    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    spy.add_license(license_1)
    spy.add_license(license_2)
    assert_equal "License to kill added successfully.", spy.add_license(license_1)

  end

  def test_can_produce_spy_report
    spy = Spy.new("Cate Archer", 100_000)
    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    spy.add_license(license_1)
    spy.add_license(license_2)
    assert_equal "Name: Cate Archer
    Qualifications:
    - License to kill
    - License to chill",
    spy.report
  end

end
