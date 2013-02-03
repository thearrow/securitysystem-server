class Sensor < ActiveRecord::Base
  attr_accessible :client_apid, :enabled, :name, :sensor_id, :tripped
end
