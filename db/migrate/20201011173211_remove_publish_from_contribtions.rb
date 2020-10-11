class RemovePublishFromContribtions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :published
  end
end
