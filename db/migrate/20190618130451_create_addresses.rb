class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
    	t.string 		 :flat_no
    	t.string 		 :location
    	t.string 		 :city
    	t.string 		 :landmark
    	t.string 		 :address_type, default: :home
    	t.references :addressable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
