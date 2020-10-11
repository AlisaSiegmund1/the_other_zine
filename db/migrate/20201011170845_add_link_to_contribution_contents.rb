class AddLinkToContributionContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contribution_contents, :link, :string
    add_column :contribution_contents, :content, :text
  end
end
