# posts = []

# while true
#   puts "1から5で評価を入力してください。終了する場合は「6」を入力してください"
#   point = gets.to_i

#   if point == 6
#     puts "終了します"
#     break
#   elsif point != 0
#     puts "コメントを入力してください。"
#     comment = gets

#     post = {point: point, comment: comment} #新しいhashの作成
#     posts.push(post)
#     posts.each do |post|
#       puts "ポイント: #{post[:point]} コメント: #{post[:comment]}"
#     end
#   else
#     puts "数字を入力してください"
#   end
# end


# 誤回答
posts = []
post = {
  point:  nil,
  comment: nil
  }

while true

  puts "1から5で評価を入力してください。終了する場合は「6」を入力してください"
  post[:point] = gets.to_i

  if post[:point] == 6
    puts "終了します"
    break

  elsif post[:point] != 0

    puts "コメントを入力してください"
    post[:comment] = gets

    posts.push(post)
    
    index = 0
    while index < posts.length
      puts "ポイント: #{posts[index][:point]}"
      puts "コメント: #{posts[index][:comment]}"
      index += 1
    end
  else
    puts "数字を入力してください"
  end
end

# posts = nil
















# 課題用



# 課題用　ここまで