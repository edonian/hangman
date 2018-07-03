class HangMan

    #initializing the @words method, basically storing the user's input. 
    def initialize 
        @word = get_random_game_word
        @guess = ''
        @word_array = create_blanks
    end 

    def play_game
        display_welcome_message
        p @word_array.join("  ")
        

        while true
            get_guess
            p fill_blanks_with_correct_letters.join(" ")
            puts " "
        end
    end    
     
    def display_welcome_message
        puts "Welcome to the Hangman Game! A fun riveting game for all."
    end

    def get_random_game_word
        random_words = ["light", "dark", "neutral", "moon", "utopia", "george", "bobby"]
        random_words.sample
    end

    def create_blanks
        Array.new(@word.length) {"_"}
    end

    def get_guess
        @guess = gets.chomp
    end

    def get_matching_letter_indexes
        (0 ... @word.length).find_all { |i| @word[i] == @guess }
    end



    def fill_blanks_with_correct_letters
        @word_array = @word_array.each_with_index.map do |blank, index|
            indexes = get_matching_letter_indexes
            if indexes.include? index
                @guess
            else
                blank
            end
        end
    end


    

end
 
#hangman = HangMan.new
#hangman.play_game
# hangman.get_guess
# p hangman.fill_blanks_with_correct_letters
# hangman.get_words
