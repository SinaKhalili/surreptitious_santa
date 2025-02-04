class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.references :user, null: false, foreign_key: true
      t.text :bio
      t.text :prefers
      t.string :secretsanta

      t.timestamps
    end
  end
end
