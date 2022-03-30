class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :locale, null: false
      t.string :coordinate, null: false
      t.string :name, null: false
      t.string :place_type, null: false

      t.timestamps
    end
    add_index :places, :locale
    add_index :places, %i[locale coordinate], unique: true
  end
end
