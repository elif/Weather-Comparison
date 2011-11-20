require 'net/http'

module Google

  def Google.temperature(location)
    # temperature
    weather_data = Net::HTTP.get 'www.google.com', "/ig/api?weather=#{location}"
    temperature = weather_data.split("temp_f data=\"")[1].split("\"")[0].to_i
  end

  def Google.conditions(location)
    # conditions
    weather_data = Net::HTTP.get 'www.google.com', "/ig/api?weather=#{location}"
    conditions = weather_data.split("condition data=\"")[1].split("\"")[0].downcase
  end

end
