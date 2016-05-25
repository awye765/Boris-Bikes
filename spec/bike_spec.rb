#describe the bike class

require 'bike'

describe Bike do
	it "checks if bike is working" do
		expect(subject).to respond_to :working?
	end
end
