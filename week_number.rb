require 'date'

start_day = Date.today - 109
end_day = Date.today - 1

period = (start_day..end_day).to_a.map { |day| day.strftime("%m/%d") }

period.each_slice(7).to_a.each do |week|
  monday =  week[0]
  lastday = week[6] || week.last
  puts "#{monday} - #{lastday}"
end

# 06/03 - 06/09
# 06/10 - 06/16
# 06/17 - 06/23
# 06/24 - 06/30
# 07/01 - 07/07...
