class HomeController < ApplicationController

  respond_to :html

  def index
    @target = Target.new.read_target
  end

end
