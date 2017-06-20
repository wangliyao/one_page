class AddUserFileurl < ActiveRecord::Migration[5.0]
  def change
    add_column :article_mores ,:user_id,:string,:limit=>32
    add_column :article_mores , :file_url , :string
  end
end
