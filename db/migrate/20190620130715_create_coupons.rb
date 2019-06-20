class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
    	t.string :type_of_coupon
    	t.integer :per_off
    	t.string :condition
    	t.string :coupon_name
      t.timestamps
    end
  end
end
