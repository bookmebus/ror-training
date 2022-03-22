class CreateBonds < ActiveRecord::Migration[7.0]
  def change
    create_table :bonds do |t|
      t.bigint :user_id, null: false
      t.bigint :friend_id, null: false
      t.string :state, null: false

      t.timestamps
    end
    # declare field that have unique value
    add_index :bonds, [:user_id, :friend_id], unique: true
    # declare foreign key
    # model bonds contain user_id that have in users model so user_id is foreign key
    add_foreign_key :bonds, :users, column: :user_id
    add_foreign_key :bonds, :users, column: :friend_id
  end
end
