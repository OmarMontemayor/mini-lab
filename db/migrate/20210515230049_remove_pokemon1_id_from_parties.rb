class RemovePokemon1IdFromParties < ActiveRecord::Migration[6.1]
  def change
    remove_column :parties, :pokemon1_id, :integer
  end
end
