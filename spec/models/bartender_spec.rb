# frozen_string_literal: true

# == Schema Information
#
# Table name: bartenders
#
#  id           :bigint           not null, primary key
#  name         :string(255)      not null
#  sex          :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  auth_user_id :bigint           not null
#
# Indexes
#
#  index_bartenders_on_auth_user_id  (auth_user_id)
#
# Foreign Keys
#
#  fk_rails_...  (auth_user_id => auth_users.id)
#

require 'rails_helper'

RSpec.describe Bartender, type: :model do
  it 'has a valid factory' do
    expect(build(:bartender)).to be_valid
  end

  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(20) }
  it { should validate_presence_of :sex }
  it { should validate_inclusion_of(:sex).in_range(1..2) }

  it 'is valid all parameter' do
    bartender = Bartender.new(
      name: '新米バーテンダー太郎',
      sex: 1
    )
    expect(bartender).to be_valid
  end
end
