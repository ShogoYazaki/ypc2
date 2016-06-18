class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :password_digest,    null: false, default: ""
      t.integer :admin_level, :default => 0
      t.integer :record_limit, :default => 30
      
      t.timestamps null: false
    end

      add_index :users, :email,                unique: true
  end
end
