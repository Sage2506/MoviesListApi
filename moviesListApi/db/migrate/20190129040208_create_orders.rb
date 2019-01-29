class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|      
      t.boolean :status,            null: false, default: true
      t.references :user, foreign_key: true
      t.integer :phase,             null: false, default: 1

      t.timestamps
    end
  end
end
