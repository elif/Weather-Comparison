class Comparison < ActiveRecord::Base
  has_many :data_points

  def historical_data
    data_points.to_s
  end

  def record_data_point
    self.data_points.create(
      :temperature_1 => Google.temperature(location_1),
      :conditions_1 => Google.conditions(location_1),
      :temperature_2 => Google.temperature(location_2),
      :conditions_2 => Google.conditions(location_2))
  end

  def chart_data
    "[{
      name: '#{location_1}',
      data: #{data_points.collect {|p| p.temperature_1}}
     }, {
      name: '#{location_2}',
      data: #{data_points.collect {|p| p.temperature_2}}
    }]"
  end

  def poll_weather(location)
    [Google.temperature(location), Google.conditions(location)]
  end

end
