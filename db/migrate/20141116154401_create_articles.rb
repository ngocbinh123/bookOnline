class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :name 
    	t.text :body
    	t.datetime :publish_at
      t.timestamps
    end
  end
end
