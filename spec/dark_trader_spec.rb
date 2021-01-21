require_relative '../lib/dark_trader.rb'

describe "check number of results" do
    it "check if there are at least 10 cryptocurrences" do
      expect(get_currencies(page).count).to be > 10
    end
end