# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has a valid factory' do
    expect(build(:project)).to be_valid
  end

  describe 'valid' do
    let(:project) { build(:project) }

    it { should validate_presence_of(:name) }
  end
end
