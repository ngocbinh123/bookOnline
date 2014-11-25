class AddListIdToProductType < ActiveRecord::Migration
  def change
    add_column :product_types, :list_id, :integer
  end
end
