class AddColumnsToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :link, :string
    add_column :contributions,:content, :text
    add_column :contributions, :name, :string
    add_column :contributions, :email, :string
    add_column :contributions,:published, :boolean
  end
end
