def main

  members = ["Arima", "Shimizu", "Iida"]
  puts "初期メンバーは次の#{members.length}人です"
  members.each do | member |
    puts "・" + member
  end

  puts "\nメンバーを追加する場合は名前を入力してください。"
  puts "追加しない場合は0を入力してください。"

  while true
    new_member = gets.chomp
    if new_member == "0"
      break
    else
      members.push(new_member)
    end
  end

  puts "\nこの#{members.length}人から選ばれます"
  i = 0
  while i < members.length
    puts "・" + members[i]
    i += 1
  end

  puts "\nEnterを押してください"
  gets
  start_time = Time.now

  puts "もう一度Enterを押してください"
  gets
  end_time = Time.now

  time_difference = msec_difference(end_time, start_time)

  index = time_difference % members.length

  puts "明日の朝礼当番は「#{members[index.to_i]}さん」です"
end

def msec_difference(a, b)
  (a - b) * 1000
end

main