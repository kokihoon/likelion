require 'forecast_io'
require 'geocoder'

location = gets.chomp
loCord = Geocoder.coordinates location
SECRET_KEY = '8135801886efc2f8048dff1c1cd7c628'

ForecastIO.configure do |configuration|
    configuration.api_key = SECRET_KEY
end


def f_to_c(f)
    c = (f -32) *5/9
    return c
end

#ForecastIO.api_key = 'this-is-your-api-key'

forecast = ForecastIO.forecast(loCord[0], loCord[1])
c = forecast.currently
#binding.pry

#puts "#{forecast.timezone} 의 날씨는 #{c.summary} & #{f_to_c(c.apparentTemperature)}C"


puts "#{location} 의 날씨는 현재 상태는 #{c.summary} 입니다. 온도는 #{f_to_c(c.apparentTemperature)} 입니다."

