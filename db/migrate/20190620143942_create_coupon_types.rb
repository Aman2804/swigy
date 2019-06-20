class CreateCouponTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :coupon_types do |t|
    	t.belongs_to :coupon
      t.timestamps
    end
  end
end
