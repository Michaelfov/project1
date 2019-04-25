class CreateCookings < ActiveRecord::Migration[5.2]
  def change
    create_table :cookings do |t|
      t.text :title
      t.integer :category_id
      t.text :step
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
