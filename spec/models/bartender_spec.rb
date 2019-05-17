# == Schema Information
#
# Table name: bartenders
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  sex        :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Bartender, type: :model do

  it 'is valid all parameter' do
    bartender = Bartender.new(
      name: '新米バーテンダーくん',
      sex: 1
    )
    expect(bartender).to be_valid
  end

  it 'is invalid name'
  it 'is invalid sex'

end
