class AddTimestampsToUserwatsons < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :userwatsons, default: Time.zone.now
  end
end
