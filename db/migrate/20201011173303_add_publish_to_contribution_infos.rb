class AddPublishToContributionInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :contribution_infos, :published, :boolean
  end
end
