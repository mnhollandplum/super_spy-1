require 'minitest/autorun'
require 'minitest/pride'
require './lib/spy.rb'
require './lib/license.rb'
require './lib/organization.rb'

class OrganizationTest < Minitest::Test
  def test_organizations_exist
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")
    assert_instance_of Organization, organization_1
    assert_instance_of Organization, organization_2
  end

  def test_can_add_spy_to_organization
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)
    spy_2.add_license(license_2)
    spy_2.add_license(license_3)
    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_2)
  end

  def test_who_has_license_to_kill
    organization_1 = Organization.new("UNITY")
    organization_2 = Organization.new("SHIELD")

    license_1 = License.new("to kill")
    license_2 = License.new("to chill")
    license_3 = License.new("to ill")

    spy_1 = Spy.new("Cate Archer", 100_000)
    spy_2 = Spy.new("Jemma Simmons", 95_000)
    spy_3 = Spy.new("Leo Fitz", 85_000)

    spy_1.add_license(license_1)
    spy_1.add_license(license_2)
    spy_2.add_license(license_2)
    spy_2.add_license(license_3)
    spy_3.add_license(license_3)

    organization_1.add_spy(spy_1)
    organization_2.add_spy(spy_2)
    organization_2.add_spy(spy_2)

    assert_equal "* Cate Archer", organization_1.to_kill
  end
  def test_not_all_spies_kill
  organization_1 = Organization.new("UNITY")
  organization_2 = Organization.new("SHIELD")

  license_1 = License.new("to kill")
  license_2 = License.new("to chill")
  license_3 = License.new("to ill")

  spy_1 = Spy.new("Cate Archer", 100_000)
  spy_2 = Spy.new("Jemma Simmons", 95_000)
  spy_3 = Spy.new("Leo Fitz", 85_000)

  spy_1.add_license(license_1)
  spy_1.add_license(license_2)
  spy_2.add_license(license_2)
  spy_2.add_license(license_3)
  spy_3.add_license(license_3)

  organization_1.add_spy(spy_1)
  organization_2.add_spy(spy_2)
  organization_2.add_spy(spy_3)

  assert_equal "None", organization_2.to_kill
end

def test_who_has_license_to_ill
organization_1 = Organization.new("UNITY")
organization_2 = Organization.new("SHIELD")

license_1 = License.new("to kill")
license_2 = License.new("to chill")
license_3 = License.new("to ill")

spy_1 = Spy.new("Cate Archer", 100_000)
spy_2 = Spy.new("Jemma Simmons", 95_000)
spy_3 = Spy.new("Leo Fitz", 85_000)

spy_1.add_license(license_1)
spy_1.add_license(license_2)
spy_2.add_license(license_2)
spy_2.add_license(license_3)
spy_3.add_license(license_3)

organization_1.add_spy(spy_1)
organization_2.add_spy(spy_2)
organization_2.add_spy(spy_3)

assert_equal "* Jemma Simmons
* Leo Fitz", organization_2.to_ill
end

def test_can_calculate_average_salary
  organization_1 = Organization.new("UNITY")
  organization_2 = Organization.new("SHIELD")

  spy_1 = Spy.new("Cate Archer", 100_000)
  spy_2 = Spy.new("Jemma Simmons", 95_000)
  spy_3 = Spy.new("Leo Fitz", 85_000)

  organization_1.add_spy(spy_1)
  organization_2.add_spy(spy_2)
  organization_2.add_spy(spy_3)

  assert_equal 100000, organization_1.average_salary
end

def test_can_determine_lowest_salary
  organization_1 = Organization.new("UNITY")
  organization_2 = Organization.new("SHIELD")

  spy_1 = Spy.new("Cate Archer", 100_000)
  spy_2 = Spy.new("Jemma Simmons", 95_000)
  spy_3 = Spy.new("Leo Fitz", 85_000)

  organization_1.add_spy(spy_1)
  organization_2.add_spy(spy_2)
  organization_2.add_spy(spy_3)

  assert_equal [spy_3], organization_2.lowest_salary
end

def test_can_determine_highest_salary
  organization_1 = Organization.new("UNITY")
  organization_2 = Organization.new("SHIELD")

  spy_1 = Spy.new("Cate Archer", 100_000)
  spy_2 = Spy.new("Jemma Simmons", 95_000)
  spy_3 = Spy.new("Leo Fitz", 85_000)

  organization_1.add_spy(spy_1)
  organization_2.add_spy(spy_2)
  organization_2.add_spy(spy_3)

  assert_equal [spy_2], organization_2.highest_salary
end
end
