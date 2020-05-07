require 'test_helper'

class MultipleChoiceOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multiple_choice_option = multiple_choice_options(:flying_car_option_one)
  end

  test "should get index" do
    get multiple_choice_options_url
    assert_response :success
  end

  test "should get new" do
    get new_multiple_choice_option_url
    assert_response :success
  end

  test "should create multiple_choice_option" do
    assert_difference('MultipleChoiceOption.count') do
      post(
        multiple_choice_options_url,
        params: {
          multiple_choice_option: {
            option: @multiple_choice_option.option,
            question_id: @multiple_choice_option.question_id,
          },
        },
      )
    end

    assert_redirected_to multiple_choice_option_url(MultipleChoiceOption.last)
  end

  test "should show multiple_choice_option" do
    get multiple_choice_option_url(@multiple_choice_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_multiple_choice_option_url(@multiple_choice_option)
    assert_response :success
  end

  test "should update multiple_choice_option" do
    patch(
      multiple_choice_option_url(@multiple_choice_option),
      params: {
        multiple_choice_option: {
          option: @multiple_choice_option.option,
          question_id: @multiple_choice_option.question_id,
        },
      },
    )
    assert_redirected_to multiple_choice_option_url(@multiple_choice_option)
  end

  test "should destroy multiple_choice_option" do
    assert_difference('MultipleChoiceOption.count', -1) do
      delete multiple_choice_option_url(@multiple_choice_option)
    end

    assert_redirected_to multiple_choice_options_url
  end
end
