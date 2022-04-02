class AddUserRefToVQuotes < ActiveRecord::Migration[7.0]
  def change
    add_reference :v_quotes, :user, null: false, foreign_key: true
  end
end
