class AddMaterialToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :material, :string
  end
end
