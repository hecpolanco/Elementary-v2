class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.string :text
      t.float :relevance
      t.integer :count
      t.integer :watson_id

      t.timestamps
    end
  end
end
