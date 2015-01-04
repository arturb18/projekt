class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :name
      t.text :description
      t.string :offer
      t.string :email
      t.text :address
      t.integer :phone

      t.timestamps null: false
    end
  end
end
