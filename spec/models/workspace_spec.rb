# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Workspace, type: :model do
  it 'has a valid factory' do
    expect(build(:workspace)).to be_valid
  end

  describe 'valid' do
    let(:workspace) { build(:workspace) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end
end
