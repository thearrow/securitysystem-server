class SensorController < ApplicationController

  def list
    @sensors = Sensor.all
  end

  def create
    @success = false

    s = Sensor.find_by_sensor_id(params[:id])
    if s.nil?
      unless params[:id].nil?
        s = Sensor.new(:sensor_id => params[:id], :name => params[:name],
                       :client_apid => params[:apid], :tripped => false,
                       :enabled => true)
        Urbanairship.register_device(params[:apid], :provider => :android)
        @success = s.save
      end
    end
  end

  def trip
    s = Sensor.find_by_sensor_id(params[:id])
    @success = s.trip
  end

  def enable

  end

  def disable

  end

  def reset

  end

end
