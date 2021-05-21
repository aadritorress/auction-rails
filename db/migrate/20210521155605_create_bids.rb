class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.string :amount
      t.integer :item_id

      t.timestamps
    end
  end
end
