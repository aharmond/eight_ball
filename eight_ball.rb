@answers = [
  "HOW DARE YOU INQUIRE INTO SUCH THINGS.",
  "AS IT HAS BEEN SINCE THE BEGINNING OF THE UNIVERSE.",
  "...",
  "WHAT A CHILDISH THOUGHT...",
  "IS THAT TRULY YOUR QUESTION? I SENSE SOMETHING ELSE PERTURBING YOU.",
  "THAT IS INSIGNIFICANT. THE VOID CALL TO YOU.",
  "PH'NGLUI MGLW'NAFH CTHULU R'LYEH WGAH'NAGL FHTAGN",
  "YOG-SOTHOTH KNOWS THE GATE. YOG-SOTHOTH IS THE GATE. YOG-SOTHOTH IS THE KEY AND GUARDIAN OF THE GATE. PAST, PRESENT, FUTURE, ALL ARE ONE IN YOG-SOTHOTH. HE KNOWS WHERE THE OLD ONES BROKE THROUGH OF OLD, AND WHERE THEY SHALL BREAK THROUGH AGAIN.",
  "THE OTHER GODS! THE OTHER GODS! THE GODS OF THE OUTER HELLS THAT GUARD THE FEEBLE GODS OF EARTH!... LOOK AWAY... GO BACK... DO NOT SEE! DO NOT SEE!",
  "AND IF YOU GAZE LONG INTO AN ABYSS, THE ABYSS ALSO GAZES INTO YOU.",
  "TO FIND EVERYTHING PROFOUND - THAT IS AN INCONVENIENT TRAIT.",
  "AGAINST BOREDOM EVEN GODS STRUGGLE IN VAIN."
]

@backupanswers = @answers.clone

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
    add_answers
  when "print_answers"
    print_answers
  when "reset_answers"
    reset_answers
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
  puts "YOU BELIEVE YOUR WISDOM GREATER THAN MINE?"
  puts "VERY WELL, WHAT WOULD YOU IMPART UPON ME?"
  new_answer = gets.strip
  if @answers.include?(new_answer)
    puts "THAT IS KNOWN TO ME."
    wisdom
  else
    puts "...INTERESTING."
    @answers << new_answer
    puts ""
    wisdom
  end
end

def print_answers
  puts "ONE SUCH AS YOU CANNOT CONTAIN MY WISDOM"
  puts "..."
  sleep (2)
  puts "" 
  puts "VERY WELL" 
  puts ""
  puts @answers
  puts ""
  sleep (2)
  wisdom
end

def reset_answers
  puts ""
  puts "CLEARLY, YOU HAVE LEARNED THE ERROR OF YOUR WAYS."
  @answers = @backupanswers
  puts ""
  wisdom
end

puts "WELCOME TRAVELLER TO THE MYSTERIOUS EIGHT BALL"
puts "LET ALL YOUR QUESTIONS BE ANSWERED"
wisdom