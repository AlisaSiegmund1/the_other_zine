class AddTypeToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :type, :string

  end
end
