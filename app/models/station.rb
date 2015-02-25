class Station
	
	STATIONS = []

	attr_accessor :stop_id, :station_name

	def initialize(station_name, stop_id)
		@station_name = station_name
		@stop_id = stop_id
		STATIONS << self
	end

	def station_count
		STATIONS.count
	end

	# def multiple_subways
	# 	#if station has more than one subway
	# 	#display all the subways on that station
	# end
end