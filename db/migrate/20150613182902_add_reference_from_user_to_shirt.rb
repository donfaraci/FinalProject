class AddReferenceFromUserToShirt < ActiveRecord::Migration
  def change
  	   add_reference :shirts, :user, index: true
  end
end
