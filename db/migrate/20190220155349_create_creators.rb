class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :birthday
      t.datetime :registered_at
      t.string :prefecture
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
