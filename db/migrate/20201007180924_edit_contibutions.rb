class EditContibutions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :author
    remove_column :contributions, :category
    remove_column :contributions, :intention
    remove_column :contributions, :email
    remove_column :contributions, :contribution_type
    remove_column :contributions, :contribution_content
  end
end
