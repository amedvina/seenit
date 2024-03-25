class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :post, foreign_key: true
      t.references :comments, :user, foreign_key: true

      t.timestamps
    end
  end
end
