class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :url
      t.text :double_damage_from
      t.text :double_damage_to
      t.text :half_damage_from
      t.text :half_damage_to
      t.text :no_damage_from
      t.text :no_damage_to

      t.timestamps
    end
  end
end
