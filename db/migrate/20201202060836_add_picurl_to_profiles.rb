class AddPicurlToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :pic_url, :string
  end
end
