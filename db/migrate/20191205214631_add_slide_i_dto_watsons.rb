class AddSlideIDtoWatsons < ActiveRecord::Migration[6.0]
  def change
    add_column :watsons, :slide_id, :integer
  end
end
