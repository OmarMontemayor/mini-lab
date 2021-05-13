class AddPokemonColumnsToParties < ActiveRecord::Migration[6.1]
  def change
    add_column :parties, :pokemon2_id, :integer
    add_column :parties, :pokemon3_id, :integer
    add_column :parties, :pokemon4_id, :integer
    add_column :parties, :pokemon5_id, :integer
    add_column :parties, :pokemon6_id, :integer
  end
end
