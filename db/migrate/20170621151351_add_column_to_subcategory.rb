class AddColumnToSubcategory < ActiveRecord::Migration[5.0]
  def change
  	add_reference :subcategories, :category, index: true, foreign_key: true
  	add_reference :products, :subcategory, index: true, foreign_key: true
  	add_reference :products, :brand, index: true, foreign_key: true
    add_reference :pictures, :product, index: true, foreign_key: true
  end
end
