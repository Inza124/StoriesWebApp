class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :auth
      t.text :body

      t.timestamps
    end
  end
end
