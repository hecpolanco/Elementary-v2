class CreateSlidewatsonsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :slidewatsons do |t|
      t.integer :slide_id
      t.integer :watson_id
    end
  end
end
