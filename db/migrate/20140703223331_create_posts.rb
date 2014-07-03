class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
