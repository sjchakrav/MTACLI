class User

	attr_accessor :origin, :destination, :line, :name
	ORIGIN = []

	def initialize
		@name = name		
	end

	def origin(start)
		MTAcli.get_user_input(start)
		subway_platforms = MTAParse.new.values
		binding.pry
		if start == #
			ORIGIN << start
		else
			MTACli.invalid
		end
	end

	def destination(fin)
		MTACli.get_input(fin)

	end

end