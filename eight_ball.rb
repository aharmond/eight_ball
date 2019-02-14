require 'colorize'

class EightBall

  def initialize
    puts "WELCOME TRAVELLER TO THE MYSTERIOUS EIGHT BALL".colorize(:light_blue)
    puts "LET ALL YOUR QUESTIONS BE ANSWERED".colorize(:light_blue)
    wisdom
    oracle
  end

  def oracle
    puts "WHY DO YOU COME TO ME TODAY?".colorize(:light_blue)
    puts "1) DO YOU SEEK WISDOM?".colorize(:green)
    puts "2) DO YOU HAVE SOME TRUTH TO TELL ME?".colorize(:yellow)
    puts "3) PERHAPS YOU HAVE ACCEPTED THAT YOUR WISDOM IS FAULTY?".colorize(:magenta)
    puts "4) OR YOU BELIEVE YOU CAN HEAR ALL MY WISDOM AT ONCE? I DO NOT RECOMMEND IT.".colorize(:light_red)
    puts "5) OTHERWISE, LEAVE MY SIGHT!".colorize(:red)
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
      puts "IS THAT YOUR WISH...?".colorize(:red)
      sleep (3)
      puts "VERY WELL. BEGONE.".colorize(:light_black)
      exit
    else
      puts "I DO NOT TAKE INSTRUCTIONS. CHOOSE FROM MY OPTIONS.".colorize(:red)
      oracle
    end
  end

  def give_question
    puts ""
    puts "WHAT DO YOU WISH TO ASK?".colorize(:green)
    puts "YOU MAY TELL ME 'QUIT' IF YOU NO LONGER HAVE A QUESTION".colorize(:light_red)
    question = gets.strip
    if question.include?("?")
      puts ""
      sleep (2)
      puts @answers.sample.colorize(:yellow)
      puts ""
      give_question
    elsif question == "QUIT"
      puts "WISDOM IS NOT FOR EVERYONE.".colorize(:light_black)
      puts ""
      oracle
    else
      puts ""
      puts "THAT IS NOT A QUESTION. I DO NOT SUFFER TRITE STATMENTS.".colorize(:red)
      puts ""
      give_question
    end
  end

  def add_answers
    puts ""
    puts "YOU BELIEVE YOUR WISDOM GREATER THAN MINE?".colorize(:red)
    puts "VERY WELL, WHAT WOULD YOU IMPART UPON ME?".colorize(:green)
    new_answer = gets.strip
    if @answers.include?(new_answer)
      puts ""
      puts "THAT IS KNOWN TO ME.".colorize(:yellow)
      oracle
    else
      puts "...INTERESTING.".colorize(:green)
      @answers << new_answer
      puts ""
      oracle
    end
  end

  def print_answers
    puts ""
    puts "ONE SUCH AS YOU CANNOT CONTAIN MY WISDOM".colorize(:red)
    puts "..."
    sleep (2)
    puts "" 
    puts "VERY WELL".colorize(:light_black)
    puts ""
    puts @answers
    puts ""
    sleep (2)
    oracle
  end

  def reset_answers
    puts ""
    puts "CLEARLY, YOU HAVE LEARNED THE ERROR OF YOUR WAYS.".colorize(:magenta)
    @answers = @backupanswers
    puts ""
    oracle
  end

  def wisdom
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
    "AGAINST BOREDOM EVEN GODS STRUGGLE IN VAIN.",
    "WHAT DO YOU MEAN I AM JUST A TEMPORARY BEING, TIED TO THE WHIM OF A MERE HUMAN?"
    ]

    @backupanswers = @answers.clone
  end
end

EightBall.new