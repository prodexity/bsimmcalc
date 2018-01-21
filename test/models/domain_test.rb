require 'test_helper'

class DomainTest < ActiveSupport::TestCase
  def setup
    Rails.application.load_seed
  end

  test "BSIMM8 domain count" do
    assert_equal(4, Domain.where(version: 8).count)
  end

  test "unique title" do
    assert_raises(ActiveRecord::RecordInvalid) do
      Domain.create!(title: 'Governance', descr: 'xxx', version: 8)
    end
  end

  test "practices association" do
    d = Domain.find_by(title: 'Governance', version: 8)
    assert_equal(3, d.practices.count)
  end

  test "activities association" do
    d = Domain.find_by(title: 'Governance', version: 8)
    assert_equal(34, d.activities.count)
  end
end
