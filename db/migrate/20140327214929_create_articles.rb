class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :kb_number
      t.text :contents
      t.integer :view_count

      t.timestamps
    end
  end
end
