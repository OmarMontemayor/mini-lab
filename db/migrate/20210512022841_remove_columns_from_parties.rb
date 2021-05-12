class RemoveColumnsFromParties < ActiveRecord::Migration[6.1]
  def change
    remove_column :parties, :pokemon2_id
    remove_column :parties, :pokemon3_id
    remove_column :parties, :pokemon4_id
    remove_column :parties, :pokemon5_id
    remove_column :parties, :pokemon6_id
  end
end
