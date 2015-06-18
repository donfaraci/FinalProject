class AddMintempAndMaxtempToCategory < ActiveRecord::Migration
  def change
  	add_column :categories, :min_temp, :integer
  	add_column :categories, :max_temp, :integer
  end
end
