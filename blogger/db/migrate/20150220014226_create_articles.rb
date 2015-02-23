class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      add_column :title
      add_column :body
      
      
      t.timestamps
    end
  end
end
