require 'spec_helper'

describe Author do
  it { should have_many(:links).through(:authorables) }
end
