require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'
require './lib/license.rb'

class LicenseTest < Minitest::Test
  def test_there_are_different_types_of_licenses
    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")
    assert_equal "to kill", license_1.type
    assert_equal "to chill", license_2.type
    assert_equal "to ill", license_3.type
  end
end
