class ChangeColumnToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :airplanes, :column, 'integer USING CAST("column" AS integer)'
  end
end
