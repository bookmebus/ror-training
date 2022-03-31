class CreateVQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :v_quotes do |t|
      t.text :quote
      t.text :authur

      t.timestamps
    end
  end
end
