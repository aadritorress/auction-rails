class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :image
      t.string :name
      t.string :price
      t.string :condition
      t.boolean :sold
      t.string :city
      t.integer :user_id
      t.integer :charity_id

      t.timestamps
    end
  end
end
