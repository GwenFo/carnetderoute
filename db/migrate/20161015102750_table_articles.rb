class TableArticles < ActiveRecord::Migration
  def change
  	create_table :articles
  	add_column :articles, :title, :string
  	add_column :articles, :country, :string
  	add_column :articles, :place, :string
  	add_column :articles, :date, :datetime
  	add_column :articles, :content, :text
  end
end
