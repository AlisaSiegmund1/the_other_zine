class AddPublishToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :publish, :boolean
  end
end
