class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :nickname, null: false
      t.string :image
      t.integer :term, null: false
      t.string :style, null: false      
      t.integer :seat_number     
      t.integer :twitter
      t.string :former_job
      t.text :shout_message      
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
