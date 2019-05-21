class AddAuthUserToBartender < ActiveRecord::Migration[6.0]
  def change
    add_reference :bartenders, :auth_user, null: false, foreign_key: true
  end
end
