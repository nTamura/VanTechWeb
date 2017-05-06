class CreateIcons < ActiveRecord::Migration[5.0]
  def change
    create_table :icons do |t|
      t.string :url
      t.references :organization, foreign_key: true, index: true, unique: true

      t.timestamps
    end
  end
end
