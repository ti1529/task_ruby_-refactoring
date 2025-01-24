def post_input
  puts "1から5で評価を入力してください"
  point = gets.to_i
  while true
    if point <= 0 || point > 5
      puts "1から5で入力してください"
      point = gets.to_i
    else
      puts "コメントを入力してください"
      comment = gets
      post = "ポイント：#{point}　コメント：#{comment}"
      File.open("data.txt", "a") do |file|
        file.puts(post)
      end
      break
    end
  end
end

def display
  puts "これまでの結果"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

  case num
  when 1
    post_input
    break
  when 2
    display
    break  
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end





# ーー以下はこれまで作成していた掲示板用ーー

# def main
#   while true
#     puts <<~EOS
#       実施したい処理を選択してください。
#       1:評価ポイントとコメントを入力する
#       2:今までの結果を確認する
#       3:終了する
#     EOS

#     pattern = gets.to_i
#     case pattern
#     when 1
#       input
#       break
#     when 2
#       puts "これまでの結果"
#       display
#       break
#     when 3
#       puts "終了します"
#       break
#     else
#       puts "1から3で入力してください"
#     end
#   end
# end

# def input
#   while true
#     puts "1から5で評価を入力してください"
#     point = gets.to_i

#     if point < 1 || point > 5
#       puts "1から5で入力してください" 
#     else
#       puts "コメントを入力してください。"
#       comment = gets
#       post = "ポイント: #{point} コメント: #{comment}" #文字列

#       # 書き込み
#       File.open("data.txt", "a") do |file|
#         file.puts(post)
#       end
#       break
#     end
#   end
# end

# def display
#   # 読み込み
#   File.open("data.txt", "r") do |read_file|
#     read_file.each_line do |line|
#       puts line
#     end
#   end




# end

# main