require 'spec_helper'

describe '#show' do
  subject { page }

  describe 'basic info' do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.username) }
  end
end
