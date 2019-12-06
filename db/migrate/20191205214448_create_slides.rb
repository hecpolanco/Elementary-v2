class CreateSlides < ActiveRecord::Migration[6.0]
  def change
    create_table :slides do |t|
      t.string :photo
      t.string :keyword
      t.text :prompt

      t.timestamps
    end
  end
end
