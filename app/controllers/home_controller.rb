class HomeController < ApplicationController

  respond_to :html

  def index
    @target = Target.new.read_target
    @target_nl =
      {
        'Green' => 'groen',
        'Orange' => 'oranje',
        'Red' => 'rood',
      }.fetch(@target)
    @air_quality = Target.new.read_air_quality
    @fijnstof_2_5pm = Target.new.read_fijnstof_2_5pm
    @temperature = Target.new.read_temperature
    @wind_speed = Target.new.read_wind_speed
  end

end
