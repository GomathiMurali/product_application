class CreateProductTables < ActiveRecord::Migration[6.0]
  def change
    create_table :product_tables do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
