class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :story
      t.string :image
      t.date :when

      t.timestamps
    end
  end
end
