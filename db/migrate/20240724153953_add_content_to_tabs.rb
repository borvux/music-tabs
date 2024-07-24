class AddContentToTabs < ActiveRecord::Migration[7.1]
  def change
    add_column :tabs, :content, :rich_text
  end
end
