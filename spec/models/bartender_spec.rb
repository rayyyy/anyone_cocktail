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

  let!(:params) {
    {
      name: '新米バーテンダーくん＠名前は２０文字まで',
      sex: 1
    }
  }

  it 'is valid all parameter' do
    bartender = Bartender.new(params)
    expect(bartender).to be_valid
  end

  it 'is invalid name empty' do
    params[:name] = ''
    bartender = Bartender.new(params)
    expect(bartender).to be_invalid
  end

  it 'is invalid name nil' do
    params[:name] = nil
    bartender = Bartender.new(params)
    expect(bartender).to be_invalid
  end

  it 'is invalid name long text' do
    params[:name] = '私の名前は２１文字です＠＠＠＠＠＠＠＠＠＠'
    bartender = Bartender.new(params)
    expect(bartender).to be_invalid
  end

  it 'is invalid sex' do
    bartender = Bartender.new(
      name: '新米バーテンダーくん',
      sex: 1
    )
    expect(bartender).to be_valid
  end


  it 'is invalid sex zero' do
    bartender = Bartender.new(
      name: '新米バーテンダーくん',
      sex: 0
    )
    expect(bartender).to be_invalid
  end

  it 'is invalid sex 3' do
    bartender = Bartender.new(
      name: '新米バーテンダーくん',
      sex: 3
    )
    expect(bartender).to be_invalid
  end

  it 'is invalid sex nil' do
    bartender = Bartender.new(
      name: '新米バーテンダーくん',
      sex: nil
    )
    expect(bartender).to be_invalid
  end

end
