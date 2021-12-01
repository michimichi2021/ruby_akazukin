scene = "first"
while true
  case scene
  when 'first'
    puts '今からおばあさんの家にお使いに行きます。いきなり3つの道に分かれました！どの道を選びますか?'
    puts "1.左の道"
    puts "2.真ん中の道"
    puts "3.右の道"
    input = gets
    case input.to_i
    when 1
      scene = "left"
    when 2
      scene = "center"
    when 3
      scene = "right"
    end
  when "left"
    puts "左の道を歩いた"
    puts "綺麗な女性に出会ってリンゴをもらいました。"
    puts "リンゴを食べたら毒りんごでした。"
    puts "GAME OVER"
    exit
  when "center"
    puts "真ん中の道を歩いた。"
    puts "分かれ道が表れました！"
    puts "1.左の道"
    puts "2.右の道"
    input = gets
    case input.to_i
    when 1
      scene = "leave"
    when 2
      scene = "end"
    end
  when "right"
    puts "歩き続けたら、もとの場所にもどった。"
    scene = "first"
  when "leave"
    puts "狼に遭遇して食べられました。"
    puts "GAME OVER"
    exit
  when "end"
    puts "森をこえました"
    puts "おばあちゃんが家のまえで待っていました"
    exit
  end
end