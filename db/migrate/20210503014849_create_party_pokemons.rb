class CreatePartyPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :party_pokemons do |t|
      t.string :pokemon_name
      t.string :pokemon_species
      t.integer :pokedex_entry
      t.string :type_1
      t.string :type_2
      t.timestamps
    end
  end
end
