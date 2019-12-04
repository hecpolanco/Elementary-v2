class CreateWatsons < ActiveRecord::Migration[6.0]
  def change
    create_table :watsons do |t|
      t.text :text
      t.string :sentiment_label
      t.float :sentiment_score
      t.float :emotion_sadness
      t.float :emotion_joy
      t.float :emotion_fear
      t.float :emotion_disgust
      t.float :emotion_anger
      t.string :keywords
      t.string :categories
      t.string :entities
    end
  end
end
