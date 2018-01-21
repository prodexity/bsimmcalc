require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "orgs association" do
    assert_equal(1, users(:user_one).orgs.count)
  end
end
