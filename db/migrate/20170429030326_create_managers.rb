class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.references :user, foreign_key: true
      t.references :organization, foreign_key: true
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
