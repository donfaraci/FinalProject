class CreateWeatherLookups < ActiveRecord::Migration
  def change
    create_table :weather_lookups do |t|

      t.timestamps null: false
    end
  end
end
