Script started on 2024-04-05 14:47:00-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="119" LINES="68"]
]0;lvm5@maroon07: ~/214/projects/09/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ruby[00m$ cat TemperatureDriver.rb 
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


  
]0;lvm5@maroon07: ~/214/projects/09/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ruby[00m$ cat temperature.rb 
####################################
# Temperature.Ruby writes the class functions in Ruby
# Name: Lily McAboy
# Date: 3/27/2024
####################################

class Temperature
    def initialize(init_degrees = 0, init_scale = 'f')
        @degrees = init_degrees
        @scale = init_scale
    end
  
    def get_degrees
      @degrees
    end
  
    def get_scale
      @scale
    end
  
    def to_fahrenheit
      case @scale.downcase
      when 'c'
        (@degrees * (9.0 / 5.0)) + 32.0
      when 'k'
        ((@degrees - 273.15) * (9.0 / 5.0)) + 32.0
      else
        @degrees
      end
    end
  
    def to_celsius
      case @scale.downcase
      when 'f'
        (@degrees - 32.0) * (5.0 / 9.0)
      when 'k'
        @degrees - 273.15
      else
        @degrees
      end
    end
  
    def to_kelvin
      case @scale.downcase
      when 'f'
        ((@degrees - 32.0) * (5.0 / 9.0)) + 273.15
      when 'c'
        @degrees + 273.15
      else
        @degrees
      end
    end
  
    def read(in_stream)
      temp = in_stream.gets.chomp
      c = temp[-1].downcase 
      deg = temp[0...-1].to_f
    end
  
    def write(out_stream)
      out_stream.puts(to_s)
    end
  
    def to_s
      "#{@degrees} #{@scale}"
    end
  
    def raise_value(value)
      @degrees += value
    end
  
    def lower_value(value)
      @degrees -= value
    end
  
    def ==(other)
      to_kelvin == other.to_kelvin
    end
  
    def <(other)
      to_kelvin < other.to_kelvin
    end
  end
  ]0;lvm5@maroon07: ~/214/projects/09/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ruby[00m$ ruby temp    TemperatureDriver.rb     
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- TemperatureDriver ([1;4mLoadError[m[1m)[m
]0;lvm5@maroon07: ~/214/projects/09/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ruby[00m$ ruby TemperatureDriver.rb
Enter Base: 60.0 F
Enter Limit: 100.0 F
Enter Step: 10.0
]0;lvm5@maroon07: ~/214/projects/09/ruby[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/09/ruby[00m$ exit

Script done on 2024-04-05 14:47:33-04:00 [COMMAND_EXIT_CODE="0"]
