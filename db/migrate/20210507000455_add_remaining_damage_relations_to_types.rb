class AddRemainingDamageRelationsToTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :double_damage_to, :text
    add_column :types, :half_damage_from, :text
    add_column :types, :half_damage_to, :text
    add_column :types, :no_damage_from, :text
    add_column :types, :no_damage_to, :text
  end
end
