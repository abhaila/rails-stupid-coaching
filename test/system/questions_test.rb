require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end

  test "saying Hello yields a hi response" do
    visit ask_url
    fill_in "question", with: "hello"
    click_on "Ask"

    assert_text "Hi"
    take_screenshot
  end
end
