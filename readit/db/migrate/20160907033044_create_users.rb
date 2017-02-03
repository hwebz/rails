class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "email", :limit => 50, :null => false
      t.column "password", :string, :limit => 30, :null => false
      # binary, boolean, data, decimal, float, interger, datetime, text, time
      t.timestamps null: false
    end
  end

  def down
  	drop_table :users
  end

  
end
