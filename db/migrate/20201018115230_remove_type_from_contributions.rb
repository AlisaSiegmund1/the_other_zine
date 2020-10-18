class RemoveTypeFromContributions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :type

  end
end
