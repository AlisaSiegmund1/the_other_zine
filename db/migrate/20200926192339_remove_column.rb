class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :text
    remove_column :contributions, :video
    remove_column :contributions, :projekt
    remove_column :contributions, :music
  end
end
