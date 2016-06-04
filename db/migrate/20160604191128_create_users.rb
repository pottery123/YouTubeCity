class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :provider, null: false
      t.string :name
      t.string :email
      t.string :photo
      t.string :oauth_token
      t.string :oauth_expires_at

      t.timestamps null: false
    end
  end
end
