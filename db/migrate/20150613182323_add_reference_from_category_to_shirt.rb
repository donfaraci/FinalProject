class AddReferenceFromCategoryToShirt < ActiveRecord::Migration
  def change
  	   add_reference :shirts, :category, index: true
  end
end
