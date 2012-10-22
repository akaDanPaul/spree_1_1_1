class CreateClosetItems < ActiveRecord::Migration
  def change
    create_table :closet_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
