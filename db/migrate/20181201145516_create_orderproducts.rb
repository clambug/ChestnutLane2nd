class CreateOrderproducts < ActiveRecord::Migration[5.2]
  def change
    create_table :orderproducts do |t|
      t.integer :product_id
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
