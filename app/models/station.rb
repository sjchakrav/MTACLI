class Station
	
	STATIONS = []

	attr_accessor :stop_id, :stop_name

	def initialize(stop_name, stop_id)
		@stop_name = stop_name
		@stop_id = stop_id
		STATIONS << self
	end

	def self.create()
		
	end

	# def multiple_subways
	# 	#if station has more than one subway
	# 	#display all the subways on that station
	# end
end