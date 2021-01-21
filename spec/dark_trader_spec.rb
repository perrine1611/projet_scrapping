require_relative '../lib/dark_trader.rb'

describe "the perform method" do

    it "should return an array with a minimum length of 100" do
    expect(perform().length).to be >= 100
  	end

  	it "BTC key should not be nil" do
  	cryptos = perform
  	expect(cryptos["BTC"]).not_to eq(nil)
  	end

  	it "ETH key should not be nil" do
  	cryptos = perform
  	expect(cryptos["ETH"]).not_to eq(nil)
  	end

  	it "USDT key should not be nil" do
  	cryptos = perform
  	expect(cryptos["USDT"]).not_to eq(nil)
  	end

end