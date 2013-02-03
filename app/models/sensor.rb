class Sensor < ActiveRecord::Base
  attr_accessible :client_apid, :enabled, :name, :sensor_id, :tripped


  def enabled?
    self.enabled
  end

  def trip
    success = false
    if !self.tripped and self.enabled
      self.tripped = true
      self.save

      notification = {:apids => [self.client_apid],
                      :android => {:alert => "#{self.name} tripped!"}}
      Urbanairship.push notification
      success = true
    end
    success
  end


end
