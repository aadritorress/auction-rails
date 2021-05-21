class CreateCharities < ActiveRecord::Migration[6.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :address
      t.string :bio

      t.timestamps
    end
  end
end
