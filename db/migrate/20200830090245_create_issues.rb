class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :short_describtion

      t.timestamps
    end
  end
end