require 'spec_helper'

describe User do

  before do
    @user = User.new(username: 'jsnk',
                     email: 'hi@gmail.com')
  end

  subject { @user }

  it { should have_many(:links).through(:userlinkables) }

  it { should respond_to(:username) }
  it { should respond_to(:email) }

  it { should validate_presence_of(:username) }
  it { should ensure_length_of(:username).is_at_least(3) }
  it { should ensure_length_of(:username).is_at_most(25) }
  it { should validate_uniqueness_of(:username).case_insensitive }

  it { should validate_presence_of(:email) }
  it { should allow_value('me@jasonkim.ca', 'iamjsonkim@gmail.com').for(:email) }
  it { should_not allow_value('asdfjkl', '@da.com').for(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }

  it { should ensure_length_of(:password).is_at_least(5) }
  it { should ensure_length_of(:password).is_at_most(40) }
end
