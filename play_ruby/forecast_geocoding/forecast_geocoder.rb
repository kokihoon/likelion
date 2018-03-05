require 'forecast_io'
require 'geocoder'

#location = gets.chomp
SECRET_KEY = '8135801886efc2f8048dff1c1cd7c628'

ForecastIO.configure do |configuration|
    configuration.api_key = SECRET_KEY
end

#location 의 위도 경도가 배열로 return
def geocode(location)
    Geocoder.coordinates location
end


class Float
    def convert_temp(to)
        if to == 'c' || to == :c
            ((self -32) * 5 / 9).round 2
        elsif to == 'f' || to == :f
            ((self * 9 / 5) + 32 ).round 2
        else
            raise ArgumentError, "Argment is not 'f' or 'c'. #{to} is not appropriate."
        end
    end
end

# 섭씨 화씨 변환기
# def temp_convert(temp, to)
#     temp = temp.to_f
#     if to == 'c'
#         ((temp -32) * 5 / 9).round 2
#     elsif to == 'f'
#         ((temp * 9 / 5) + 32 ).round 2
#     else
#         raise ArgumentError, "Argment is not 'f' or 'c'. #{to} is not appropriate."
#     end
# end


print '위치를 입력해주세요: '
location = gets.chomp

#location = '서울'
#f 에는 해당 위도경도의 날씨정보 종합 저장
forecast = ForecastIO.forecast(geocode(location).first, geocode(location).last)

# c에는 f의 정보중 현재의 정보만 저장
c = forecast.currently

puts "#{location} 의 날씨는 현재 상태는 #{c.summary} 입니다. 온도는 #{c.apparentTemperature.convert_temp('c')} °C 입니다."
