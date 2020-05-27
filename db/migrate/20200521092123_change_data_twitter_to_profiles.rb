class ChangeDataTwitterToProfiles < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :twitter, :string
  end
end
