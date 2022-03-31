require "test_helper"

class VQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v_quote = v_quotes(:one)
  end

  test "should get index" do
    get v_quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_v_quote_url
    assert_response :success
  end

  test "should create v_quote" do
    assert_difference("VQuote.count") do
      post v_quotes_url, params: { v_quote: { authur: @v_quote.authur, quote: @v_quote.quote } }
    end

    assert_redirected_to v_quote_url(VQuote.last)
  end

  test "should show v_quote" do
    get v_quote_url(@v_quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_v_quote_url(@v_quote)
    assert_response :success
  end

  test "should update v_quote" do
    patch v_quote_url(@v_quote), params: { v_quote: { authur: @v_quote.authur, quote: @v_quote.quote } }
    assert_redirected_to v_quote_url(@v_quote)
  end

  test "should destroy v_quote" do
    assert_difference("VQuote.count", -1) do
      delete v_quote_url(@v_quote)
    end

    assert_redirected_to v_quotes_url
  end
end
