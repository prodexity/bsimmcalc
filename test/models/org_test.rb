require 'test_helper'

class OrgTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "users association" do
    o = orgs(:org_one)
    assert_equal(2, o.users.count)
    o = orgs(:org_two)
    assert_equal(0, o.users.count)
  end

  test "activities_answered association" do
    o = orgs(:org_one)
    assert_equal(3, o.activities_answered.count)
    o = orgs(:org_two)
    assert_equal(1, o.activities_answered.count)
  end

  test "activities_performed association" do
    o = orgs(:org_one)
    assert_equal(1, o.activities_performed.count)
    o = orgs(:org_two)
    assert_equal(1, o.activities_performed.count)
  end

  test "activities_not_performed association" do
    o = orgs(:org_one)
    assert_equal(2, o.activities_not_performed.count)
    o = orgs(:org_two)
    assert_equal(0, o.activities_not_performed.count)
  end
end
