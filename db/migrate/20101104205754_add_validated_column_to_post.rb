class AddValidatedColumnToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :test_capitalized, :string
  end

  def self.down
    remove_column :posts, :test_capitalized
  end
end
