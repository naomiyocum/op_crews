class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews do |t|
      t.string :name
      t.integer :ranking
      t.string :ship
      t.boolean :worst_generation

      t.timestamps
    end
  end
end
