class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :announce
      t.text :body
      t.belongs_to :category, foreign_key: true
      t.boolean :published

      t.timestamps
    end
  end
end
