require "test_helper"

class MainthreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainthread = mainthreads(:one)
  end

  test "should get index" do
    get mainthreads_url
    assert_response :success
  end

  test "should get new" do
    get new_mainthread_url
    assert_response :success
  end

  test "should create mainthread" do
    assert_difference('Mainthread.count') do
      post mainthreads_url, params: { mainthread: { info: @mainthread.info, name: @mainthread.name } }
    end

    assert_redirected_to mainthread_url(Mainthread.last)
  end

  test "should show mainthread" do
    get mainthread_url(@mainthread)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainthread_url(@mainthread)
    assert_response :success
  end

  test "should update mainthread" do
    patch mainthread_url(@mainthread), params: { mainthread: { info: @mainthread.info, name: @mainthread.name } }
    assert_redirected_to mainthread_url(@mainthread)
  end

  test "should destroy mainthread" do
    assert_difference('Mainthread.count', -1) do
      delete mainthread_url(@mainthread)
    end

    assert_redirected_to mainthreads_url
  end
end
