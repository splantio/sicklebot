require "application_system_test_case"

class MultipleChoiceOptionsTest < ApplicationSystemTestCase
  setup do
    @multiple_choice_option = multiple_choice_options(:one)
  end

  test "visiting the index" do
    visit multiple_choice_options_url
    assert_selector "h1", text: "Multiple Choice Options"
  end

  test "creating a Multiple choice option" do
    visit multiple_choice_options_url
    click_on "New Multiple Choice Option"

    fill_in "Option", with: @multiple_choice_option.option
    fill_in "Question", with: @multiple_choice_option.question_id
    click_on "Create Multiple choice option"

    assert_text "Multiple choice option was successfully created"
    click_on "Back"
  end

  test "updating a Multiple choice option" do
    visit multiple_choice_options_url
    click_on "Edit", match: :first

    fill_in "Option", with: @multiple_choice_option.option
    fill_in "Question", with: @multiple_choice_option.question_id
    click_on "Update Multiple choice option"

    assert_text "Multiple choice option was successfully updated"
    click_on "Back"
  end

  test "destroying a Multiple choice option" do
    visit multiple_choice_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multiple choice option was successfully destroyed"
  end
end
