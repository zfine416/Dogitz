class AddImageFingerprintColumnToPost < ActiveRecord::Migration
  def up
    add_column :posts, :image_fingerprint, :string
  end

  def down
    remove_column :posts, :image_fingerprint
  end
end
