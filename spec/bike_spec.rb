<<<<<<< HEAD
require 'docking_station'

describe Bike do
  it 'responds to working?' do
      expect(subject).to respond_to :working?
  end 

end
=======
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

>>>>>>> day-three
