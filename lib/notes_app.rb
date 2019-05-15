
class NotesList
	attr_accessor :notes

	def initialize 
		@notes = []
	end
	
	def add_note(note)
    @notes << note
	end
	
	def show_titles
		@notes.each do |hash|
			puts "#{hash[:title]}"
		end
	end
end