class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.text :summary
    	t.string :email
    	t.string :location
    	t.integer :capacity
    	t.text :menu
    	t.string :price_range
      t.timestamps
    end
  end
end
