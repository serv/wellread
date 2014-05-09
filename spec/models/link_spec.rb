require 'spec_helper'

describe Link do
  it { should have_many(:authorables) }
  it { should have_many(:authors).through(:authorables) }
  it { should have_many(:categorizeables) }
  it { should have_many(:categories).through(:categorizeables) }
  it { should belong_to(:user) }

  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_most(140) }

  it { should validate_presence_of(:url) }
  it { should validate_uniqueness_of(:url) }
  it { should ensure_length_of(:url).is_at_most(2083) }
end
