class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
    	t.integer :final_amount
    	t.string 	:type_of_pay, defaulst: :cash
    	t.belongs_to :order, index: true
      t.timestamps
    end
  end
end
