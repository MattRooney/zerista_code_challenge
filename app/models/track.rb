class Track < ActiveRecord::Base
  has_many :sessions
end
