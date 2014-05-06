require 'spec_helper'

describe Authorable do
  it { should belong_to(:author) }
  it { should belong_to(:link) }
end
