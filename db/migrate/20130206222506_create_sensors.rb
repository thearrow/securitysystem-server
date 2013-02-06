class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.integer :sensor_id
      t.string :name
      t.boolean :enabled
      t.boolean :tripped
      t.string :client_apid

      t.timestamps
    end
  end
end
