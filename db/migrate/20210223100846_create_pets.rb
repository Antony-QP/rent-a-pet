class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :breed
      t.integer :price

      t.timestamps
    end
  end
end
