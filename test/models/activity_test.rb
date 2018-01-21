require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "BSIMM8 total activity count" do
    assert_equal(113, Activity.where(version: 8).count)
  end

  test "unique bsid" do
    pr = Practice.first
    assert_raises(ActiveRecord::RecordInvalid) do
      Activity.create!(
        practice: pr,
        bsid: 'SM1.1',
        title: 'XXX',
        descr: 'XXX',
        level: 1,
        version: 8
      )
    end
  end

  test "unique title" do
    pr = Practice.first
    assert_raises(ActiveRecord::RecordInvalid) do
      Activity.create!(
        practice: pr,
        bsid: 'XXX',
        title: 'Create evangelism role and perform internal marketing.',
        descr: 'XXX',
        level: 1,
        version: 8
      )
    end
  end

  test "practice association" do
    a = Activity.find_by(bsid: 'SM1.1', version: 8)
    pr = Practice.find_by(short: 'SM', version: 8)
    assert_equal(pr, a.practice)
  end

  test "domain association" do
    a = Activity.find_by(bsid: 'SFD1.2', version: 8)
    d = Domain.find_by(title: 'Intelligence', version: 8)
    assert_equal(d, a.domain)
  end

  test "orgs_answered association" do
    a = Activity.find(1)
    assert_equal(2, a.orgs_answered.count)
    a = Activity.find(2)
    assert_equal(1, a.orgs_answered.count)
  end

  test "orgs_perform association" do
    a = Activity.find(1)
    assert_equal(2, a.orgs_perform.count)
    a = Activity.find(2)
    assert_equal(0, a.orgs_perform.count)
  end

  test "orgs_not_perform association" do
    a = Activity.find(1)
    assert_equal(0, a.orgs_not_perform.count)
    a = Activity.find(2)
    assert_equal(1, a.orgs_not_perform.count)
  end

  test "verticals association" do
    a = Activity.where(version: 8).first
    assert_equal(7, a.verticals.count)
  end

  test "#count" do
    a = Activity.find_by(bsid: 'SM1.1', version: 8)
    assert_equal(55, a.count)
  end

  test "#count_by_vertical" do
    a = Activity.find_by(bsid: 'SFD1.2', version: 8)
    assert_equal(31, a.count_by_vertical('Financial'))
  end
end
