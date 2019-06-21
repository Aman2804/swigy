class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :designation
      t.string :name
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
