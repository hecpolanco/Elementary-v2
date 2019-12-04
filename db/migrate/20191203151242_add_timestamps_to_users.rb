class AddTimestampsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :users, default: Time.zone.now
  end
end
