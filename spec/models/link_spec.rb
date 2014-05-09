require 'spec_helper'

describe Link do
  it { should have_many(:authorables) }
  it { should have_many(:authors).through(:authorables) }
  it { should have_many(:categorizeables) }
  it { should have_many(:categories).through(:categorizeables) }
  it { should belong_to(:user) }
end
