class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :text,     null: false, default: ""
      t.references :user, foreign_key: true
      t.integer    :genre_id     , null: false
      t.timestamps
    end
  end
end
