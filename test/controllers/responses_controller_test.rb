require 'test_helper'

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    ApplicationController.any_instance.stubs(current_user: administrators(:splantio))
    @response = responses(:ravenclaw_correct)
  end

  test "should get index" do
    get responses_url
    assert_response :success
  end

  test "should get new" do
    get new_response_url
    assert_response :success
  end

  test "should create response" do
    assert_difference('Response.count') do
      # Don't ask me why this is necessary.
      response = @response
      post(
        responses_url,
        params: {
          response: {
            body: response.body,
            correct: response.correct,
            question_id: response.question_id,
            user_id: response.user_id
          }
        }
      )
    end

    assert_redirected_to response_url(Response.last)
  end

  test "should show response" do
    get response_url(@response)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_url(@response)
    assert_response :success
  end

  test "should update response" do
    # Don't ask me why this is necessary.
    response = @response
    patch(
      response_url(response),
      params: {
        response: {
          body: response.body,
          correct: response.correct,
          question_id: response.question_id,
          user_id: response.user_id
        }
      }
    )
    assert_redirected_to response_url(response)
  end

  test "should destroy response" do
    assert_difference('Response.count', -1) do
      delete response_url(@response)
    end

    assert_redirected_to responses_url
  end
end
