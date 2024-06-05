class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreigin_key: true
      t.string :title
      t.text :body
      t.integer :star
      t.timestamps
    end
  end
end
