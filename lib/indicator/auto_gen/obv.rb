# Ta-Lib function mapping class 
# Function: 'OBV'
# Description: 'On Balance Volume'
# This file has been autogenerated - Do Not Edit.
class Indicator::AutoGen::Obv < Indicator::Base

  def initialize(*args)
    
    @func = TaLib::Function.new("OBV")
  end

  # Is price data required as an input
  def self.price_input?
    false
  end

  # The list of arguments
  def self.arguments
    [  ]
  end

  # The minimum set of inputs required
  def self.inputs
    [ :in_real, :volume ]
  end

  # The outputs generated by this function
  def self.outputs
    [ :out_real ]
  end

  def run(in_real, volume)
    len = in_real.length
    @func.in_real(0, map(in_real))
    @func.in_real(1, map(volume))


    out_real = Array.new(len)
    @func.out_real(0, out_real)
  
    @func.call(0, len - 1)

    out_real
  end
end
