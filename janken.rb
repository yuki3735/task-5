class JankenFacingThat
  puts "じゃん...けん..."

  def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    playHand = gets.to_i
    cpuHand = rand(0..2)
    jankenItem = ["グー","チョキ","パー","戦略的撤退"]
    puts "--------------------"
    puts "ホイッ！"
    puts "あなたは#{jankenItem[playHand]}"
    puts "相手は#{jankenItem[cpuHand]}"
    
    if playHand == cpuHand
      casePattern = "pattern0"
      
    elsif playHand == 3
      puts "強くなってこい"
      
    elsif (playHand == 0 && cpuHand == 1) || (playHand == 1 && cpuHand == 2) || (playHand == 2 && cpuHand == 0)
      puts "you win!!"
      casePattern = "pattern1"
      
    elsif playHand != (0..3).to_a
      puts "ちゃんと選択肢から選べや"
      
    else
      puts "you lose..."
      casePattern = "pattern2"
    end
      
    case casePattern
    when "pattern0"
      puts "あいこで..."
      janken
    
    when "pattern1"
      puts "あっちむいて〜..."
      puts "0(上)1(右)2(下)3(左)"
        
      playDirection = gets.to_i
      cpuDirection = rand(0..3)
      direction = ["上","右","下","左"]
      
      puts "--------------------" 
      puts "あなた:#{direction[playDirection]}"
      puts "相手は:#{direction[cpuDirection]}"
      
      if playDirection == cpuDirection
        puts "you win!!"
      elsif playDirection != (0..3).to_a
        puts "ちゃんと選択肢から選べや"
      else
        puts "もう一回遊べるどん"
        puts "じゃんけん"
        janken
      end
      
    when "pattern2"
      puts "あっちむいて〜..."
      puts "0(上)1(右)2(下)3(左)"
        
      playDirection = gets.to_i
      cpuDirection = rand(0..3)
      direction = ["上","右","下","左"]
      
      puts "--------------------"
      puts "あなた:#{direction[playDirection]}"
      puts "相手は:#{direction[cpuDirection]}"
      
      if playDirection == cpuDirection
        puts "you lose..."
      elsif playDirection != (0..3).to_a
        puts "ちゃんと選択肢から選べや"
      else
        puts "もう一回遊べるどん"
        puts "じゃんけん"
        janken
      end
    end
  end
end

janken_play = JankenFacingThat.new
janken_play.janken
