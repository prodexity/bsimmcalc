require 'test_helper'

class PracticeTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "BSIMM8 total practice count" do
    assert_equal(12, Practice.where(version: 8).count)
  end

  test "unique title" do
    d = Domain.find_by(title: 'Intelligence')
    assert_raises(ActiveRecord::RecordInvalid) do
      Practice.create!(domain: d, title: 'Attack Models', short: 'XX', descr: 'xxx', version: 8)
    end
  end

  test "unique short" do
    d = Domain.find_by(title: 'Intelligence')
    assert_raises(ActiveRecord::RecordInvalid) do
      Practice.create!(domain: d, title: 'XXX', short: 'SM', descr: 'xxx', version: 8)
    end
  end

  test "domain association" do
    d = Domain.find_by(title: 'Governance', version: 8)
    p = Practice.find_by(short: 'SM', version: 8)
    assert_equal(d, p.domain)
  end

  test "activities association" do
    p = Practice.find_by(short: 'SM', version: 8)
    assert_equal(11, p.activities.count)
  end
end
