# frozen_string_literal: true

# == Schema Information
#
# Table name: auth_users
#
#  id                     :bigint           not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_auth_users_on_email                 (email) UNIQUE
#  index_auth_users_on_reset_password_token  (reset_password_token) UNIQUE
#

FactoryBot.define do
  factory :auth_user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password { 'password' }
  end
end
