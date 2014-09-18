class CreateAppTags < ActiveRecord::Migration
  def change
    create_table :app_tags do |t|
      t.references :app, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
