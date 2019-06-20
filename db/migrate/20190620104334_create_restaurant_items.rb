class CreateRestaurantItems < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_items do |t|
    	t.belongs_to :restaurant, index: true
      t.belongs_to :item, index: true
      t.integer :price
      t.timestamps
    end
  end
end
