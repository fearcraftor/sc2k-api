require 'test_helper'

class TerrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terrain = terrains(:one)
  end

  test "should get index" do
    get terrains_url, as: :json
    assert_response :success
  end

  test "should create terrain" do
    assert_difference('Terrain.count') do
      post terrains_url, params: { terrain: { city_id: @terrain.city_id, terrain_data: @terrain.terrain_data } }, as: :json
    end

    assert_response 201
  end

  test "should show terrain" do
    get terrain_url(@terrain), as: :json
    assert_response :success
  end

  test "should update terrain" do
    patch terrain_url(@terrain), params: { terrain: { city_id: @terrain.city_id, terrain_data: @terrain.terrain_data } }, as: :json
    assert_response 200
  end

  test "should destroy terrain" do
    assert_difference('Terrain.count', -1) do
      delete terrain_url(@terrain), as: :json
    end

    assert_response 204
  end
end
