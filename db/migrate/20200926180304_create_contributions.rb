class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.references :issue, foreign_key: true
      t.string :author
      t.string :email
      t.boolean :public
      t.boolean :published
      t.text :text
      t.string :video
      t.string :projekt
      t.string :music
      t.string :category
      t.string :intention

      t.timestamps
    end
  end
end
