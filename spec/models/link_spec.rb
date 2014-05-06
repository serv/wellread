require 'spec_helper'

describe Link do
  it { should belong_to(:author) }
  it { should belong_to(:category) }
  it { should belong_to(:user) }
end
