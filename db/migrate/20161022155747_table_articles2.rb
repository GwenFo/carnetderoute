class TableArticles2 < ActiveRecord::Migration
  def change
  	create_table :tags
  	add_column :tags, :name, :string
  	add_column :articles, :publicationDate, :date
  	add_column :articles, :lat, :float
  	add_column :articles, :lgn, :float

	create_table :articles_tags, :id => false do |t|
      t.integer :article_id
      t.integer :tag_id
    end

    add_index :articles_tags, [:article_id, :tag_id]
  end
end
