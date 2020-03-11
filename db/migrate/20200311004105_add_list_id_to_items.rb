class AddListIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :list_id, :integer
  end
end
