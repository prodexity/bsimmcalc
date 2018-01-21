require 'test_helper'

class VerticalTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "BSIMM8 total vertical count" do
    assert_equal(7, Vertical.where(version: 8).count)
  end

  test "activities association" do
    v = Vertical.where(version: 8).first
    assert_equal(113, v.activities.count)
  end
end
