class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :pokemon1_id
      t.integer :pokemon2_id, :default => ""
      t.integer :pokemon3_id, :default => ""
      t.integer :pokemon4_id, :default => ""
      t.integer :pokemon5_id, :default => ""
      t.integer :pokemon6_id, :default => ""
      t.integer :trainder_id

      t.timestamps
    end
  end
end
