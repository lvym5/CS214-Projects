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
  