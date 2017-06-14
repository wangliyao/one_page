class CreateArticleMores < ActiveRecord::Migration[5.0]
  def change
    create_table :article_mores do |t|
      t.column "name" ,:string
      t.column "content",:string
      t.timestamps
    end
  end
end
