class AddSantaRefToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :santa_id, :integer
  end
end
