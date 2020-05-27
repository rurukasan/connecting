class CreateMemos < ActiveRecord::Migration[5.0]
  def change

    create_table :memos do |t|
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true
      t.text :text, null: false
      t.timestamps
    end
  end
end
