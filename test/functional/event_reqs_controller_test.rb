require 'test_helper'

class EventReqsControllerTest < ActionController::TestCase
  setup do
    @event_req = event_reqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_reqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_req" do
    assert_difference('EventReq.count') do
      post :create, event_req: { friend: @event_req.friend, time: @event_req.time }
    end

    assert_redirected_to event_req_path(assigns(:event_req))
  end

  test "should show event_req" do
    get :show, id: @event_req
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_req
    assert_response :success
  end

  test "should update event_req" do
    put :update, id: @event_req, event_req: { friend: @event_req.friend, time: @event_req.time }
    assert_redirected_to event_req_path(assigns(:event_req))
  end

  test "should destroy event_req" do
    assert_difference('EventReq.count', -1) do
      delete :destroy, id: @event_req
    end

    assert_redirected_to event_reqs_path
  end
end
