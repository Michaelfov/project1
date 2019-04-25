class CookingsMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :cookings_materials, :id => false do |t|
      t.integer :cooking_id
      t.integer :material_id
    end
  end
end
