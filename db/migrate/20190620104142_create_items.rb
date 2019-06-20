class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    	t.string :name
    	t.string :category
    	t.string :type_of_dish
      t.timestamps
    end
  end
end
