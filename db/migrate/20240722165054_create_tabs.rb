class CreateTabs < ActiveRecord::Migration[7.1]
  def change
    create_table :tabs do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
