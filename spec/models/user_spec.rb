require 'spec_helper'

describe User do
  it { should have_many(:links).through(:userlinkables) }
end
