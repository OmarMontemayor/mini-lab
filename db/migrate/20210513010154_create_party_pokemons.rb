class CreatePartyPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :party_pokemons do |t|
      t.integer :party_id
      t.integer :pokemon_id

      t.timestamps
    end
  end
end
