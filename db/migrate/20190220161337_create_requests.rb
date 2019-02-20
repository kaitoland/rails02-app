class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name
      t.integer :price
      t.string :picture
      t.string :place
      t.string :stock
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
