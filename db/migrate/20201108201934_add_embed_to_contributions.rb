class AddEmbedToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :embed, :string
  end
end
