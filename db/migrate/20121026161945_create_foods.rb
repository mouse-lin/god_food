class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string   "number"
      t.string   "shop"
      t.string   "name"
      t.string   "price"
      t.string   "food_type"
      t.string   "food_number"
      t.string   "phone"
      t.string   "address"

      t.timestamps
    end
  end
end
