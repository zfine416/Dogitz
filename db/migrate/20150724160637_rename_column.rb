class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :posts, :link, :instagram
  end
end
