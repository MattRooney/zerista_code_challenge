class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def tuesday
    @sessions = Session.first(2)
  end

  def wednesday
    @sessions = Session.last(2)
  end

end
