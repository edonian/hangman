require "hangman"

RSpec.describe HangMan, "HangMan" do 
    let(:new_game) { HangMan.new }

        it "only selects from random_words" do
        new_game.get_random_game_word do |char|
            expect(["light", "dark", "neutral", "moon", "utopia", "george", "bobby"].include?(char)).to eq(true)
        end
    end
end


