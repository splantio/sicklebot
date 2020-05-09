require 'test_helper'

class AdministratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_administrator_url
    assert_response :success
  end

  test "should create administrator" do
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
end
