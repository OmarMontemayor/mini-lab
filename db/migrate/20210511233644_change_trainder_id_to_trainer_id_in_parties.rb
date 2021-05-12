class ChangeTrainderIdToTrainerIdInParties < ActiveRecord::Migration[6.1]
  def change
    rename_column :parties, :trainder_id, :trainer_id
  end
end
