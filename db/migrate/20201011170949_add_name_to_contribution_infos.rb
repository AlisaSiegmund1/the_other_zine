class AddNameToContributionInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :contribution_infos, :name, :string
    add_column :contribution_infos, :email, :string
  end
end
