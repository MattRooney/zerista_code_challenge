class AddTrackRefToSessions < ActiveRecord::Migration
  def change
    add_reference :sessions, :track, index: true, foreign_key: true
  end
end
