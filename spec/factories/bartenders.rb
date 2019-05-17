# frozen_string_literal: true

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

FactoryBot.define do
  factory :bartender do
    name { "Name" }
    sex { 1 }
  end
end
