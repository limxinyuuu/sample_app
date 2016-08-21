require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get rsvp" do
    get static_pages_rsvp_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get blog" do
    get static_pages_blog_url
    assert_response :success
  end

end
