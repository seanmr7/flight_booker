class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :city
      t.string :airport_code
      
      t.timestamps
    end
  end
end
