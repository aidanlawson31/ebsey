class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :buyer_id
      t.integer :seller_id
      t.string :name
      t.string :description
      t.float :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
