@answers = [
  "HOW DARE YOU INQUIRE INTO SUCH THINGS.",
  "AS IT HAS BEEN SINCE THE BEGINNING OF THE UNIVERSE.",
  "...",
  "WHAT A CHILDISH THOUGHT...",
  "IS THAT TRULY YOUR QUESTION? I SENSE SOMETHING ELSE PERTURBING YOU.",
  "THAT IS INSIGNIFICANT. THE VOID CALLS TO YOU.",
  "PH'NGLUI MGLW'NAFH CTHULU R'LYEH WGAH'NAGL FHTAGN",
  "THE OTHER GODS! THE OTHER GODS!... LOOK AWAY... GO BACK... DO NOT SEE! DO NOT SEE!",
  "AND IF YOU GAZE LONG INTO AN ABYSS, THE ABYSS ALSO GAZES INTO YOU.",
  "TO FIND EVERYTHING PROFOUND - THAT IS AN INCONVENIENT TRAIT.",
  "AGAINST BOREDOM EVEN GODS STRUGGLE IN VAIN."
]

@backupanswers = @answers.clone

def wisdom
  puts "WHY DO YOU COME TO ME TODAY?"
  puts "1) DO YOU SEEK WISDOM?"
  puts "2) DO YOU HAVE SOME TRUTH TO TELL ME?"
  puts "3) PERHAPS YOU HAVE ACCEPTED THAT YOUR WISDOM IS FAULTY?"
  puts "4) OR YOU BELIEVE YOU CAN HEAR ALL MY WISDOM AT ONCE? I DO NOT RECOMMEND IT."
  puts "5) OTHERWISE, LEAVE MY SIGHT!"
  input = gets.to_i
  case input
  when 1
    give_question
  when 2
    add_answers
  when 3
    reset_answers
  when 4
    print_answers
  when 5
    puts "IS THAT YOUR WISH...?"
    sleep (3)
    puts "VERY WELL. BEGONE."
    exit
  else
    puts "I DO NOT TAKE INSTRUCTIONS. CHOOSE FROM MY OPTIONS."
    wisdom
  end
end

def give_question
  puts "WHAT DO YOU WISH TO ASK?"
  puts "YOU MAY TELL ME 'QUIT' IF YOU NO LONGER HAVE A QUESTION"
  question = gets.strip
  if question.include?("?")
    puts ""
    sleep (2)
    puts @answers.sample
    puts ""
    give_question
  elsif question == "QUIT"
    puts "WISDOM IS NOT FOR EVERYONE."
    puts ""
    wisdom
  else
    puts ""
    puts "THAT IS NOT A QUESTION. I DO NOT SUFFER TRITE STATMENTS."
    puts ""
    give_question
  end
end

def add_answers
  puts ""
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