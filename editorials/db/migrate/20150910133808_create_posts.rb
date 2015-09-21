class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :content
    	t.integer :user_id
    	t.string :user_name
    	t.integer :assignment_id
      t.integer :number_of_comments, default: 0

      t.timestamps null: false
    end
  end
end
