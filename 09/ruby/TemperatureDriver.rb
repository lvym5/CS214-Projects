####################################
# TemperatureDriver tests the Temperature Class 
# Name: Lily McAboy
# Date: 3/27/2024
####################################
load 'temperature.rb'

class TemperatureDriver
  def self.main
    keyboard = $stdin

    base_temp = Temperature.new
    print 'Enter Base: '
    begin
      base_temp.read(keyboard)
    rescue StandardError => e
      puts e.message
      puts e.backtrace.join("\n")
      exit(-1)
    end

    limit_temp = Temperature.new
    print 'Enter Limit: '
    begin
      limit_temp.read(keyboard)
    rescue StandardError => e
      puts e.message
      puts e.backtrace.join("\n")
      exit(-1)
    end

    print 'Enter Step: '
    step_value = keyboard.gets.to_f

    while base_temp < limit_temp
      puts "\nF: #{base_temp.to_fahrenheit}"
      puts "C: #{base_temp.to_celsius}"
      puts "K: #{base_temp.to_kelvin}\n"
      base_temp.raise_value(step_value)
    end
  end
end

# Running the TemperatureDriver
TemperatureDriver.main


  
