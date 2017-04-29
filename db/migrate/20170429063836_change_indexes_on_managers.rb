class ChanngeIndexesOnManagers < ActiveRecord::Migration[5.0]
  def change
    remove_index :managers, :user_id
    remove_index :managers, :organization_id

    add_index :managers, :user_id, unique: true
    add_index :managers, :organization_id, unique: true
  end
end
