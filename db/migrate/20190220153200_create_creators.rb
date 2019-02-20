class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.datetime :registered_at

      t.timestamps
    end
  end
end
