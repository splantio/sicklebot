require 'test_helper'

class AdministratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new in development" do
    Rails.stubs(env: ActiveSupport::StringInquirer.new("development"))
    get new_administrator_url
    assert_response :success
  end

  test "should create administrator in development" do
    Rails.stubs(env: ActiveSupport::StringInquirer.new("development"))
    assert_difference('Administrator.count', 1) do
      post(
        administrators_url,
        params: {
          administrator: {
            username: "biz",
            password: "is a free elf",
          },
        },
      )
    end

    assert_redirected_to welcome_url
  end

  test "should not get new when not in development" do
    Rails.stubs(env: ActiveSupport::StringInquirer.new("production"))
    assert_raises(ActionController::RoutingError, "Not found") do
      get new_administrator_url
    end
  end

  test "should not create administrator when not in development" do
    Rails.stubs(env: ActiveSupport::StringInquirer.new("production"))
    assert_raises(ActionController::RoutingError, "Not found") do
      assert_difference('Administrator.count', 0) do
        post(
          administrators_url,
          params: {
            administrator: {
              username: "biz",
              password: "is a free elf",
            },
          },
        )
      end
    end
  end
end
