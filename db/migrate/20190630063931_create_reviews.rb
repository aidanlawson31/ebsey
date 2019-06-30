class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating, :limit => 5
      t.text :content
      t.integer :reviewed_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
