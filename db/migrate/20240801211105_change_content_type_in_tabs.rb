class ChangeContentTypeInTabs < ActiveRecord::Migration[7.1]
  def change
    change_column :tabs, :content, :text
  end
end
