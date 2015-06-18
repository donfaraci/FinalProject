class AddTempsToShirts < ActiveRecord::Migration
  def change
  	add_column :shirts, :min_t, :integer
  	add_column :shirts, :max_t, :integer
  end
end
