# frozen_string_literal: true

# == Schema Information
#
# Table name: bartenders
#
#  id           :bigint           not null, primary key
#  name         :string(255)      not null
#  sex          :integer          default(0), not null
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

class Bartender < ApplicationRecord
  belongs_to :auth_user

  validates :name, length: { maximum: 20 }, presence: true
  validates :sex, inclusion: { in: (0..2) }, presence: true
end
