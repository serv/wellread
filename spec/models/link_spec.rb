require 'spec_helper'

describe Link do
  it { should have_many(:authorables) }
  it { should have_many(:authors).through(:authorables) }
  it { should belong_to(:category) }
  it { should belong_to(:user) }
end
