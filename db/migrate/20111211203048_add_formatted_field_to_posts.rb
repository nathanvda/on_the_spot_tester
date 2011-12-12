class AddFormattedFieldToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.boolean :enabled
      t.text :large_text
    end
  end
end
