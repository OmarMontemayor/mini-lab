class AddDamageRelationsToTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :double_damage_from, :text
  end
end
