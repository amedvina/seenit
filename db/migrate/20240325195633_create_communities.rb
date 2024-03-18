class CreateCommunities < ActiveRecord::Migration[7.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.text :description
      t.index :name, unique: true

      t.timestamps
    end
  end
end
