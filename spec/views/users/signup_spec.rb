require 'spec_helper'

describe '#signup' do
  subject { page }

  describe 'basic info' do
    before { visit signup_path }

    it { should have_content('Sign up') }
  end
end
