class CreateTabs < ActiveRecord::Migration[7.1]
  def change
    create_table :tabs do |t|
      t.string :title
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
