class RemoveBodyFromTabs < ActiveRecord::Migration[7.1]
  def change
    remove_column :tabs, :body, :string
  end
end
