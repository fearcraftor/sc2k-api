require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get buildings_url, as: :json
    assert_response :success
  end

  test "should create building" do
    assert_difference('Building.count') do
      post buildings_url, params: { building: { city_id: @building.city_id, num: @building.num, x_index: @building.x_index, y_index: @building.y_index } }, as: :json
    end

    assert_response 201
  end

  test "should show building" do
    get building_url(@building), as: :json
    assert_response :success
  end

  test "should update building" do
    patch building_url(@building), params: { building: { city_id: @building.city_id, num: @building.num, x_index: @building.x_index, y_index: @building.y_index } }, as: :json
    assert_response 200
  end

  test "should destroy building" do
    assert_difference('Building.count', -1) do
      delete building_url(@building), as: :json
    end

    assert_response 204
  end
end
