interest = true

while interest == true
  puts 'What calculator would you like to use - (a)dvanced or (b)asic?'
  calculatortype = gets.chomp

  if calculatortype == 'a' then
    puts 'You have chosen the advanced calculator. What operation would you like to do - s(q)uare root or (p)ower?'
    operationtype = gets.chomp

    if operationtype == 'q' then
      puts 'You have chosen to square root. What is your number you want to square root?'
      num1 = gets.chomp
      answer = Math.sqrt(num1.to_f)
      puts "The square root of #{num1} is #{answer}!"
    elsif operationtype == 'p' then
      puts 'You have chosen to power. What is the number you want to apply the power to?'
      num1 = gets.chomp
      puts 'What is the number you want to use as the power?'
      num2 = gets.chomp
      answer = num1.to_f**num2.to_f
      puts "#{num1} raised to the power of #{num2} is #{answer}!"
    else
      puts "That isn't an operation type!"
    end
    puts "Do you want to continue? Type 'y' if yes, and press any other key if you do not wish to continue."
    response = gets.chomp
    if response != 'y'
      interest = false
    end

  elsif calculatortype == 'b' then
    puts 'You have chosen the basic calculator. What operation would you like to do - (a)ddition, (s)ubtraction, (d)ivision or (m)ultiplication?'
    operationtype = gets.chomp

    if operationtype == 'a'
      puts 'You have chosen to add. What is the first number you want to add?'
      num1 = gets.chomp
      puts 'What is the second number you want to add?'
      num2 = gets.chomp
      answer = num1.to_f+num2.to_f
      puts "#{num1} + #{num2} = #{answer}!"
    elsif operationtype == 's'
      puts 'You have chosen to subtract. What is the number you want to subtract from?'
      num1 = gets.chomp
      puts 'What is the number you want to subtract from this number?'
      num2 = gets.chomp
      answer = num1.to_f-num2.to_f
      puts "#{num1} - #{num2} = #{answer}!"
    elsif operationtype == 'd'
      puts 'You have chosen to divide. What is the number that you want to divide?'
      num1 = gets.chomp
      puts 'What is the number you want to divide it by?'
      num2 = gets.chomp
      answer = (num1.to_f / num2.to_f).to_f
      puts "#{num1} ÷ #{num2} = #{answer}!"
    elsif operationtype == 'm'
      puts 'You have chosen to multiply. What is the first number you want to multiply?'
      num1 = gets.chomp
      puts 'What is the second number you want to multiply?'
      num2 = gets.chomp
      answer = num1.to_f*num2.to_f
      puts "#{num1} * #{num2} = #{answer}!"
    else
      puts "That isn't an operation type!"
    end
    puts "Do you want to continue? Type 'y' if yes, and press any other key if you do not wish to continue."
    response = gets.chomp
    if response != 'y'
      interest = false
    end

  else
    puts "That isn't a calculator type!"
  end
end
