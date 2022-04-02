module VQuotesHelper
  def owner(v_quote)
    v_quote.user.id == Current.user.id
  end
end
