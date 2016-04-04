class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def tuesday
    @sessions = Session.where("start < ?", "9/12/2015")
  end

  def wednesday
    @sessions = Session.where("start > ?", "9/12/2015")
  end

end
