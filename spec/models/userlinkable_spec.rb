require 'spec_helper'

describe Userlinkable do
  it { should belong_to(:user) }
  it { should belong_to(:link) }
end
