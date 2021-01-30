class RemoveEmbeddFromContributions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :embed, :string
  end
end
