class AddColumnToSubcategory < ActiveRecord::Migration[5.0]
  def change
  	add_reference :subcategories, :category, index: true, foreign_key: true
  end
end
