class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :name,              null: false, index: true
      t.integer :price,             null: false
      t.string  :size               null: false
      t.string  :item_status,       null: false
      t.string  :shipping_charge,   null: false
      t.string  :shipping_way,      null: false
      t.string  :discription,       null: false
      t.references :brand,          foreign_key: true, index: true
      t.references :category,       null: false, foreign_key: true, index: true
      t.integer :buyer_user_id
      t.integer :saler_user_id      null: false
      t.string  :fee_side           null: false
      t.string  :region             null: false
      t.string  :sipping_days       null: false
      t.string  :transaction_status null: false
      t.timestamps
    end
  end
end
