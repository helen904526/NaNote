class AddDeletedAt < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :deleted_at, :datetime
    add_index :notes, :deleted_at
    #查詢率高的欄位建議加索引值
  end
end
