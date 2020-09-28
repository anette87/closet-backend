class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :brand
      t.string :color
      t.string :season
      t.string :image
      t.integer :closet_id

      t.timestamps
    end
  end
end
