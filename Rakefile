# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'csv'
require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :import => :environment do
  csv = File.read('test_events.csv')
  parsed_csv = CSV.parse(csv, :headers => true)
  parsed_csv.each do |row|
    track = Track.find_or_create_by!(name: row["track"])
    session_hash = row.to_hash.slice("start", "finish", "name")
    session_hash["track_id"] = track.id
    Session.create!(session_hash)
  end
end
