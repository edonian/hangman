class HangMan
attr_reader :word, :word_array

    def initialize 
        @word = get_random_game_word
        @guess = ''
        @word_array = create_blanks
        @past_guesses = []
    end 

    def play_game
        system('clear')
        display_welcome_message
        p @word_array.join("  ")
        
        while true
            get_guess
            system('clear')
            user_feedback
            puts "Your past guesses are: #{@past_guesses.join(", ")}."
            
            puts fill_blanks_with_correct_letters.join(" ")
        end
    end    
     
    def display_welcome_message
        puts "Welcome to the Hangman Game! A fun riveting game for all."
    end

    def get_random_game_word
        random_words = ["light", "dark", "neutral", "moon", "utopia"]
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

    def user_feedback
        if @word.include? @guess
            puts "Brilliant guess! Try another letter!"
        else
            @past_guesses << @guess
            puts "FAIL. That word did not contain #{@guess} Try Again!"
        end
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
 




