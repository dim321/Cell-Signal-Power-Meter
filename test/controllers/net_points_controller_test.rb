require 'test_helper'

class NetPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @net_point = net_points(:one)
  end

  test "should get index" do
    get net_points_url
    assert_response :success
  end

  test "should get new" do
    get new_net_point_url
    assert_response :success
  end

  test "should create net_point" do
    assert_difference('NetPoint.count') do
      post net_points_url, params: { net_point: { asu: @net_point.asu, dbm: @net_point.dbm, latitude: @net_point.latitude, longitude: @net_point.longitude, mcc: @net_point.mcc, mnc: @net_point.mnc, net_type: @net_point.net_type, operator_id: @net_point.operator_id, user_id: @net_point.user_id } }
    end

    assert_redirected_to net_point_url(NetPoint.last)
  end

  test "should show net_point" do
    get net_point_url(@net_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_net_point_url(@net_point)
    assert_response :success
  end

  test "should update net_point" do
    patch net_point_url(@net_point), params: { net_point: { asu: @net_point.asu, dbm: @net_point.dbm, latitude: @net_point.latitude, longitude: @net_point.longitude, mcc: @net_point.mcc, mnc: @net_point.mnc, net_type: @net_point.net_type, operator_id: @net_point.operator_id, user_id: @net_point.user_id } }
    assert_redirected_to net_point_url(@net_point)
  end

  test "should destroy net_point" do
    assert_difference('NetPoint.count', -1) do
      delete net_point_url(@net_point)
    end

    assert_redirected_to net_points_url
  end
end
