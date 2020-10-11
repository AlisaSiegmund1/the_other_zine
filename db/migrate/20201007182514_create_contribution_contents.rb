class CreateContributionContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contribution_contents do |t|

      t.timestamps
    end
  end
end
