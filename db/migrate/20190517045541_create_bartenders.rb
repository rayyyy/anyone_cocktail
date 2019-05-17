class CreateBartenders < ActiveRecord::Migration[6.0]
  def change
    create_table :bartenders do |t|
      t.string :name, null: false
      t.integer :sex, null: false, limit: 2

      t.timestamps
    end
  end
end
