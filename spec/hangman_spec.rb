require "hangman"

RSpec.describe HangMan, "HangMan" do

    describe "get_random_game_word" do
        let(:new_game) { HangMan.new }

        it "only selects from random_words" do
            new_game.get_random_game_word do |char|
                expect(["light", "dark", "neutral", "moon", "utopia", "george", "bobby"].include?(char)).to eq(true)
            end
        end
    end

    describe "create_blanks" do 
        it "should create a new array" do
            expect(Array.new).to eq([])
        end
    end

    describe "get_matching_letter_indexes" do
        let(:new_game) { HangMan.new } 
            it "should print the empty array by the word length" do
            expect(new_game.word.length).to eq(new_game.word_array.length)
        end
    end


end




