class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :type
      t.string :author
      t.integer :warranty_months
      t.string :size

      t.timestamps
    end
  end
end
