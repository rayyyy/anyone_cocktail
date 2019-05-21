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

FactoryBot.define do
  factory :bartender do
    name { 'Name' }
    sex { 1 }
  end
end
