
secret_word = "carlos"  
guess = ""       
guess_count = 0
guess_limit = 5
out_of_guesses = false

puts "Welcome to Billy's Word Guessing Game, make a guess!"
while guess != secret_word  && !out_of_guesses
    if guess_count < guess_limit
        puts "Enter guess: "
        guess = gets.chomp()
        guess.downcase!
        guess_count += 1
    else
        out_of_guesses = true
    end
end

if out_of_guesses 
    puts "You're out of guesses, better luck next time!"
else
    puts "You won!"
end