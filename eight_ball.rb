@answers = [
  "HOW DARE YOU INQUIRE INTO SUCH THINGS.",
  "AS IT HAS BEEN SINCE THE BEGINNING OF THE UNIVERSE.",
  "...",
  "WHAT A CHILDISH THOUGHT...",
  "IS THAT TRULY YOUR QUESTION? I SENSE SOMETHING ELSE PERTURBING YOU."
]

def wisdom
  puts "WHAT IS YOUR QUESTION?"
  puts "YOU MAY TELL ME 'QUIT' IF YOU WISH TO ABANDON MY WISDOM"
  question = gets.strip
  if question == "QUIT"
    puts "IS THAT YOUR WISH...?"
    sleep (3)
    puts "VERY WELL. BEGONE."
    exit
  elsif question.include? "?"
    puts @answers.sample
    wisdom
  else
    puts "I REQUIRE A QUESTION, NOT A STATEMENT."
    wisdom
  end
end

puts "WELCOME TRAVELLER TO THE MYSTERIOUS EIGHT BALL"
puts "LET ALL YOUR QUESTIONS BE ANSWERED"
wisdom