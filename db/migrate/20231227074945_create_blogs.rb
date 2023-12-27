class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :tittle
      t.string :discription
      t.string :heading
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
