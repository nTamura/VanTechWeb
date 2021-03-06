class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :organization, foreign_key: true, index: true

      t.timestamps
    end
  end
end
