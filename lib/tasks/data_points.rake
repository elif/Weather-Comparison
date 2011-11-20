task :record_data_points => :environment do
  Comparison.all.each do |comparison|
    puts "[#{Time.now}] Recording data point for (#{comparison.id}) #{comparison.location_1}/#{comparison.location_2}"
    comparison.record_data_point
  end
end