# frozen_string_literal: true

require 'rails_helper'
RSpec.feature 'Auth', :system do
  let(:bartender) { create(:bartender) }
  let(:auth_user) { create(:auth_user, email: 'test@example.com', password: 'password', bartender: bartender) }

  scenario 'サインイン成功' do
    sign_up_with('Rayyyy', 'test1@example.com', 'password', 'password')
    expect(page).to have_content 'アカウント登録を受け付けました'
  end
  scenario 'サインイン失敗' do
    sign_up_with('Rayyyy', 'test2@example.com', 'password', 'aaaa')
    expect(page).to have_content 'auth user を保存できません'
  end
  scenario 'ログイン成功' do
    sign_in(auth_user.email, auth_user.password)
    expect(page).to have_content 'ログインしました'
  end
  scenario 'ログイン失敗' do
    sign_in('test4@example.com', 'aaa')
    expect(page).to have_content 'メールアドレスまたはパスワードが無効です。'
  end
end
