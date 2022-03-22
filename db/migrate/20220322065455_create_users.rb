class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # null: false == non nullable
      t.string :username, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :email, null: false
      # default == initial value
      t.boolean :isPublic, null: false, default: true

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
