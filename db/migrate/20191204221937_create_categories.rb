class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.float :score
      t.string :label
      t.integer :watson_id

      t.timestamps
    end
  end
end
