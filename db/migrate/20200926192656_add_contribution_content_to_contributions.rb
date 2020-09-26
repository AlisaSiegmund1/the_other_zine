class AddContributionContentToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :contribution_content, :string
  end
end
