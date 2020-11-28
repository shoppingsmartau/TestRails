class CreateArticleCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :article_category do |t|
      t.integer :category_id
      t.integer :article_id
    end
  end
end
