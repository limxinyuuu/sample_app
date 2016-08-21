require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get rsvp" do
    get rsvp_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get blog" do
    get blog_path
    assert_response :success
  end

end
