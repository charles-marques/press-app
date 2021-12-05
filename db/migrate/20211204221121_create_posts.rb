class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.string :author

      t.timestamps
    end
  end
end
