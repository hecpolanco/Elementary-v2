class CreateUserwatsons < ActiveRecord::Migration[6.0]
  def change
    create_table :userwatsons do |t|
      t.integer :user_id
      t.integer :watson_id
    end
  end
end
