class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
 t.string :title
  t.string :subtitle
  t.string :image_name
  t.string :sku
  t.integer :price
  t.string :download_url
   
  t.text :description
      t.timestamps
    end
  end
end
