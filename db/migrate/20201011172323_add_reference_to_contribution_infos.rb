class AddReferenceToContributionInfos < ActiveRecord::Migration[5.2]
  def change
     add_reference :contribution_infos, :contribution, foreign_key: true
  end
end
