require "application_system_test_case"

class VQuotesTest < ApplicationSystemTestCase
  setup do
    @v_quote = v_quotes(:one)
  end

  test "visiting the index" do
    visit v_quotes_url
    assert_selector "h1", text: "V quotes"
  end

  test "should create v quote" do
    visit v_quotes_url
    click_on "New v quote"

    fill_in "Authur", with: @v_quote.authur
    fill_in "Quote", with: @v_quote.quote
    click_on "Create V quote"

    assert_text "V quote was successfully created"
    click_on "Back"
  end

  test "should update V quote" do
    visit v_quote_url(@v_quote)
    click_on "Edit this v quote", match: :first

    fill_in "Authur", with: @v_quote.authur
    fill_in "Quote", with: @v_quote.quote
    click_on "Update V quote"

    assert_text "V quote was successfully updated"
    click_on "Back"
  end

  test "should destroy V quote" do
    visit v_quote_url(@v_quote)
    click_on "Destroy this v quote", match: :first

    assert_text "V quote was successfully destroyed"
  end
end
