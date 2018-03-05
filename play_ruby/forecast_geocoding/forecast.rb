require 'forecast_io'
require 'pry'

SECRET_KEY = '8135801886efc2f8048dff1c1cd7c628'

ForecastIO.configure do |configuration|
    configuration.api_key = SECRET_KEY
end


def f_to_c(f)
    c = (f -32) *5/9
    return c
end

#ForecastIO.api_key = 'this-is-your-api-key'

forecast = ForecastIO.forecast(35.140115, 129.098469)
c = forecast.currently
#binding.pry

puts "#{forecast.timezone} 의 날씨는 #{c.summary} & #{f_to_c(c.apparentTemperature)}C"
