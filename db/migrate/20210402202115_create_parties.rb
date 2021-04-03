class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :pokemon_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
