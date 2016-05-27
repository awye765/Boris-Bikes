<<<<<<< HEAD
#describe the bike class

require 'bike'

describe Bike do

	it 'responds to report_broken' do
		expect(subject).to respond_to :report_broken
	end

	it 'can be reported broken' do
		expect(subject.report_broken).to eq true
	end
end

=======
require 'bike'

describe Bike do
	it {is_expected.to respond_to :working?}
end
>>>>>>> c3f00e7b9c513489ade4a3b29aaeef0a324f36bb
