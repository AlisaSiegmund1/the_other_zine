class AddColumToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :con_type

  end
end
