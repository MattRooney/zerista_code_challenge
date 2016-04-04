class Session < ActiveRecord::Base
  belongs_to :track
  
  def start_time
    start.strftime("%I:%M %p")
  end

  def finish_time
    finish.strftime("%I:%M %p")
  end
end
