class CreatePals < ActiveRecord::Migration[5.2]
  def change
    create_table :pals do |t|
      t.integer :count
      t.string :res

      t.timestamps
    end
  end
end
