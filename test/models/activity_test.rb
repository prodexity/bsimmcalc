require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  test "Activity Practice" do
    assert_equal(activities(:activity_one).practice, practices(:practice_one))
  end

  test "Activity Practice mismatch" do
    assert_not_equal(activities(:activity_one).practice, practices(:practice_two))
  end

  test "Activity Domain" do
    assert_equal(activities(:activity_one).domain, activities(:activity_one).practice.domain)
  end
end
