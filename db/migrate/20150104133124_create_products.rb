class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :quality
      t.string :avalible_time
      t.references :farm_product, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :farm_products
  end
end
