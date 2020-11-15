class AddEmbeddToContributions < ActiveRecord::Migration[5.2]
  def change
        add_column :contributions, :embed, :text
  end
end
