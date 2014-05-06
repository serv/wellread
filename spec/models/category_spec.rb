require 'spec_helper'

describe Category do
  it { should have_many(:links).through(:categorizeables) }
end
