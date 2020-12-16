class CreateComment < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :posts
      t.string :body
      t.timestamps
    end
  end
end
