require 'spec_helper'

describe Categorizeable do
  it { should belong_to(:category) }
  it { should belong_to(:link) }
end
