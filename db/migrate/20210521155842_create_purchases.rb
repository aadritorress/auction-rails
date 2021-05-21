class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :item_id
      t.integer :bid_id

      t.timestamps
    end
  end
end
