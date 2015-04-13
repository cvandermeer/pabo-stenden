class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
    	t.string :title
    	t.integer :user_id
    end
  end
end
