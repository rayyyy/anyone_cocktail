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

class Bartender < ApplicationRecord
  validates :name, length: { maximum: 20 }, presence: true
  validates :sex, inclusion: { in: (1..2)}, presence: true
end
