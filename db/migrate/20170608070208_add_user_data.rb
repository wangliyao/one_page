class AddUserData < ActiveRecord::Migration[5.0]
  def change
    add_column :"users",:name,:string,:limit=>22,:null=>false
    add_column :"users",:email,:string,:limit=>22,:null=>false
    add_column :"users",:password,:string,:limit=>22,:null=>false
  end
end
