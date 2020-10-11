class CreateContributionInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :contribution_infos do |t|

      t.timestamps
    end
  end
end
