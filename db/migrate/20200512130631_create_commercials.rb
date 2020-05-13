class CreateCommercials < ActiveRecord::Migration[6.0]
  def change
    create_table :commercials do |t|
      t.string :name
      t.string :owner_id
      t.string :email
      t.string :address
      t.integer :max_occupancy
      t.timestamps
    end
  end
end
