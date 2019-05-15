require 'notes_app'
	describe NotesList do 
		let (:notes_list) {NotesList.new }

		it 'can use the add note method to add a title and body to a list of notes in the notes app' do 
			note = {title: "get milk",body: "don't forget to pick up the milk on the way home"}

			updated_notes = notes_list.add_note(note)
	
			expect(updated_notes).to include({title: "get milk", body: "don't forget to pick up the milk on the way home"})
		end

		it 'can respond to show_titles method' do
			note = {title: "Lauren", body: "this is the body"}
			note2 = {title: "Milk", body: "this is the body of milk"}
			
			notes_list.add_note(note)

			expect{notes_list.show_titles}.to output("Lauren\n").to_stdout
		end 

	end