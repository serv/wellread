require 'spec_helper'

describe Author do
  it { should have_many(:authorables) }
  it { should have_many(:links).through(:authorables) }

  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_most(140) }
  it { should validate_uniqueness_of(:name) }
  it { should allow_value('Jason Kim', 'Mark Zuck').for(:name) }
  it { should_not allow_value('J3s0n K1m').for(:name) }
end
