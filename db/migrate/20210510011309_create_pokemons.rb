class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.integer :species_id
      t.string :type_1
      t.string :type_2

      t.timestamps
    end
  end
end
