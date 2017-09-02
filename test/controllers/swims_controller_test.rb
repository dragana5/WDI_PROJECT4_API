require 'test_helper'

class SwimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swim = swims(:one)
  end

  test "should get index" do
    get swims_url, as: :json
    assert_response :success
  end

  test "should create swim" do
    assert_difference('Swim.count') do
      post swims_url, params: { swim: { description: @swim.description, endDate: @swim.endDate, startDate: @swim.startDate, title: @swim.title, user_id: @swim.user_id, venue_id: @swim.venue_id } }, as: :json
    end

    assert_response 201
  end

  test "should show swim" do
    get swim_url(@swim), as: :json
    assert_response :success
  end

  test "should update swim" do
    patch swim_url(@swim), params: { swim: { description: @swim.description, endDate: @swim.endDate, startDate: @swim.startDate, title: @swim.title, user_id: @swim.user_id, venue_id: @swim.venue_id } }, as: :json
    assert_response 200
  end

  test "should destroy swim" do
    assert_difference('Swim.count', -1) do
      delete swim_url(@swim), as: :json
    end

    assert_response 204
  end
end
