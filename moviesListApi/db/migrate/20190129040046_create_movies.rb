class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title,              null: false
      t.string :cover
      t.boolean :status,            null: false, default: true
      t.text :description
      t.float :size,                null: false

      t.timestamps
    end
  end
end
