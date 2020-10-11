class AddReferenceToContributionContents < ActiveRecord::Migration[5.2]
  def change
     add_reference :contribution_contents, :contribution, foreign_key: true

  end
end
