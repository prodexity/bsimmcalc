require 'test_helper'

class ActivityOrgTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "uniqueness of entries for organization + activity" do
    a = Activity.find_by(bsid: 'SFD3.3', version: 8)
    o = orgs(:org_one)
    ActivityOrg.create!(activity: a, org: o, answer: 1)
    assert_raises(ActiveRecord::RecordInvalid) do
      ActivityOrg.create!(activity: a, org: o, answer: 0)
    end
  end
end
