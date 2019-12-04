class AddTimestampsToWatsons < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :watsons, default: Time.zone.now
  end
end
