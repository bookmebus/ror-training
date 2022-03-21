class CreateCreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :create_posts, id: false do |t|
      t.integer :id
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
