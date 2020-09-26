class AddContributionTypeToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :contribution_type, :string
  end
end
