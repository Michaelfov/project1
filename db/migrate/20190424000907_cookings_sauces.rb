class CookingsSauces < ActiveRecord::Migration[5.2]
  def change
    create_table :cookings_sauces, :id => false do |t|
      t.integer :cooking_id
      t.integer :sauce_id
    end
  end
end
