class Session < ActiveRecord::Base
  def start_time
    start.strftime("%I:%M %p")
  end

  def finish_time
    finish.strftime("%I:%M %p")
  end
end
