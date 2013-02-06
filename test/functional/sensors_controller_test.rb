require 'test_helper'

class SensorsControllerTest < ActionController::TestCase
  setup do
    @sensor = sensors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor" do
    assert_difference('Sensor.count') do
      post :create, sensor: { client_apid: @sensor.client_apid, enabled: @sensor.enabled, name: @sensor.name, sensor_id: @sensor.sensor_id, tripped: @sensor.tripped }
    end

    assert_response 201
  end

  test "should show sensor" do
    get :show, id: @sensor
    assert_response :success
  end

  test "should update sensor" do
    put :update, id: @sensor, sensor: { client_apid: @sensor.client_apid, enabled: @sensor.enabled, name: @sensor.name, sensor_id: @sensor.sensor_id, tripped: @sensor.tripped }
    assert_response 204
  end

  test "should destroy sensor" do
    assert_difference('Sensor.count', -1) do
      delete :destroy, id: @sensor
    end

    assert_response 204
  end
end
