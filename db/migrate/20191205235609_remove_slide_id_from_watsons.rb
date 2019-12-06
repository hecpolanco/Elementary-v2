class RemoveSlideIdFromWatsons < ActiveRecord::Migration[6.0]
  def change

    remove_column :watsons, :slide_id, :integer
  end
end
