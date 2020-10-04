class RemoveColumnContributions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :public
    add_column :contributions, :approved, :boolean
  end
end
