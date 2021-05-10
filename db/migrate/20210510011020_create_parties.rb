class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :pokemon1_id
      t.integer :pokemon2_id
      t.integer :pokemon3_id
      t.integer :pokemon4_id
      t.integer :pokemon5_id
      t.integer :pokemon6_id
      t.integer :trainder_id

      t.timestamps
    end
  end
end
