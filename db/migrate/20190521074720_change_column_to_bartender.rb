class ChangeColumnToBartender < ActiveRecord::Migration[6.0]

  def up
    change_column_default :bartenders, :sex, 0
  end

  def down
    change_column_default :bartenders, :sex, nil
  end
end
