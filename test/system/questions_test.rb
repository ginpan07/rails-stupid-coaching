require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url

  #   assert_selector "h1", text: "Questions"
  # end

  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking question yields a rude response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "asking question yields a friendly response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "directing back to ask url after clicking the link" do
    visit answer_url
    click_link('Ask more question')
    assert_selector "p", text: "Ask your coach anything"
  end
end
