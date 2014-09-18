class RemoveTagFromApps < ActiveRecord::Migration
  def up
    remove_index :tags, :app_id
    remove_column :tags, :app_id
  end

  def down
    add_reference :tags, :book, index: true
  end
end
