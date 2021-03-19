class ChangeIntegerInForignKeyInJournalsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :journals, :category_id, :bigint
  end
end
