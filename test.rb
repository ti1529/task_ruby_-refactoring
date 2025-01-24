def main

  members = ["Arima", "Shimizu", "Iida"]

  puts "この中から選ばれます"
  index = 0
  while index < members.length
    puts members[index]
    index += 1
  end

  puts "Enterを押してください"
  gets

  start_time = Time.now
  # puts start_time

  puts "Enterを押してください"
  gets
  end_time = Time.now
  # puts end_time

  time_difference = msec_difference(end_time, start_time)
  # puts time_difference

  index = time_difference % 3
  # puts index.to_i

  puts "明日の朝礼当番は#{members[index.to_i]}さんです"
end

def msec_difference(a, b)
  (a - b) * 1000
end

main