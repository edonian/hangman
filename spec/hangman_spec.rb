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

end




