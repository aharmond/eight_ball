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
  case question
  when "QUIT"
    puts "IS THAT YOUR WISH...?"
    sleep (3)
    puts "VERY WELL. BEGONE."
    exit
  when "add_answers"
    puts "YOU BELIEVE YOUR WISDOM GREATER THAN MINE?"
    puts "VERY WELL, WHAT WOULD YOU IMPART UPON ME?"
    add_answers
  else
    if question.include?("?")
      puts @answers.sample
      wisdom
    else
      puts "I REQUIRE A QUESTION, NOT A STATEMENT."
      wisdom
    end
  end
end

def add_answers
  new_answer = gets.strip
  if @answers.include?(new_answer)
    puts "THAT IS KNOWN TO ME."
    wisdom
  else
    puts "...INTERESTING."
    @answers << new_answer
    wisdom
  end
end

puts "WELCOME TRAVELLER TO THE MYSTERIOUS EIGHT BALL"
puts "LET ALL YOUR QUESTIONS BE ANSWERED"
wisdom