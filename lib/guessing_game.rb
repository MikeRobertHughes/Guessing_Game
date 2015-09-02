class GuessingGame

  attr_accessor :answer

  def initialize
    @answer = rand(1..100)
  end

  def start
    puts "Please enter a number from low to high, I'll let you know if it's"
    puts "too high or too low. You have five chances to guess."
    @guessArray = []
    @guess = nil
    @guess_num = @guess.to_i
    @guessArray.push(@guess_num)
    @num_guesses = 0
    # puts "DEBUG: num_guess: #{@num_guesses.inspect}"
    while @guess_num != @answer && @num_guesses != 5
      puts "What number would you like to guess?"
      @guess = gets.chomp
      @guess_num = @guess.to_i
      if @guess == ""
        puts "You just hit return...didn't you?..."
      elsif @guessArray.include?(@guess_num)
        puts "You already guessed that number foolio"
      elsif @guess_num > @answer
        puts "Your guess is too high."
        @guessArray.push(@guess_num)
        @num_guesses += 1
      elsif @guess_num < @answer
        puts "Your guess is too low."
        @guessArray.push(@guess_num)
        @num_guesses += 1
      end
      # puts "DEBUG: @guess.inspect: #{@guess.inspect}"
      # puts "DEBUG: @num_guesses: #{@num_guesses.inspect}"
    end
  end

  def end
    if @guess_num == @answer
      puts "Whoa!!!! Who ARE YOU?!!"
      system('sleep 2')
      system('clear')
      puts "....."
      system('sleep .5')
      system('clear')
      puts "........"
      system('sleep .5')
      system('clear')
      puts "..........."
      system('sleep .5')
      system('clear')
      puts ".............."
      system('sleep .5')
      system('clear')
      puts "................."
      system('sleep 1')
      system('clear')
      puts ".................Neo?"
      system('sleep 2')
    else
      puts "Psshhh..you lost...loser."
    end
  end
end

game = GuessingGame.new
puts game.answer
game.start
game.end
