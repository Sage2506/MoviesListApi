class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :movie, foreign_key: true
      t.boolean :status,            null: false, default: true
      t.timestamps
    end
  end
end
