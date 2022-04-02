class ParkService

  def self.conn 
    Faraday.new(url: 'https://developer.nps.gov/api/v1/') do |faraday|
      faraday.params['api_key'] = ENV['nps_api_key']
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.parks_by_state(state)
    response = conn.get("parks?stateCode=#{state}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end