require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = administrators(:splantio)
  end

  test "should get login" do
    get login_url
    assert_response :success
  end

  test "should succeed login with correct credentials" do
    post(
      login_url,
      params: {
        username: @admin.username,
        password: "sicklebot", # plaintext password noice
      },
    )
    assert_response :found
    assert_redirected_to welcome_url
  end

  test "fails login with incorrect credentials" do
    post(
      login_url,
      params: {
        administrator: {
          username: @admin.username,
          password: "incorrect password",
        },
      },
    )
    assert_response :found
    assert_redirected_to login_url
  end

  test "succeeds logging out" do
    log_in
    get logout_url
    assert_redirected_to login_url
  end

  test "welcome redirects to login if not logged in" do
    get welcome_url
    assert_redirected_to login_url
  end

  test "can get welcome if logged in" do
    log_in
    get welcome_url
    assert_response :success
  end

  test "get login redirects to welcome if already logged in" do
    log_in
    get login_url
    assert_redirected_to welcome_url
  end

  private

  def log_in
    post(login_url, params: { username: @admin.username, password: "sicklebot" })
  end
end
