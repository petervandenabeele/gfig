class Target
  include HTTParty
  base_uri  'http://107.170.20.30/api/scenarios'
  default_params apiKey: 'foobar'

  def read_target
    self.class.get_json
      .fetch('nodes')
      .detect{|n| n.fetch('name') == 'Target'}
      .fetch('mostLikelyState')
      .fetch('state')
  end

  def read_fijnstof_2_5pm
    JSON.parse(
      self.class.get_json
      .fetch('rawData')
      .detect{|e| e.has_key?('AirQuality')}
      .fetch('AirQuality')
      .fetch('rawData')
    ).fetch('PM25')
  end

  def read_air_quality
    self.class.get_json
      .fetch('nodes')
      .detect{|n| n.fetch('name') == 'AirQuality'}
      .fetch('mostLikelyState')
      .fetch('state')
  end

  def read_temperature
    JSON.parse(
        self.class.get_json
        .fetch('rawData')
        .detect{|e| e.has_key?('Weather')}
        .fetch('Weather')
        .fetch('rawData')
    ).fetch('temperature')
  end

  def read_wind_speed
    JSON.parse(
        self.class.get_json
        .fetch('rawData')
        .detect{|e| e.has_key?('Weather')}
        .fetch('Weather')
        .fetch('rawData')
    ).fetch('windSpeed').to_i
  end

  def self.get_json
    @response ||= get("/1")
    JSON.parse(@response.body)
  end
end
