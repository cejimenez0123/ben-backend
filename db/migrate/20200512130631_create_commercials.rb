class CreateCommercials < ActiveRecord::Migration[6.0]
  def change
    create_table :commercials do |t|
      t.string :name
      t.string :user_id
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :max_occupancy
      t.integer :current_occupancy
      t.timestamps
    end
  end
end
