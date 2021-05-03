class ChangePokemonIdToPartyPokemonId < ActiveRecord::Migration[6.1]
  def change
    rename_column :parties, :pokemon_id, :party_pokemon_id
  end
end
