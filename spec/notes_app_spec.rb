require 'notes_app'
describe NotesList do 
	let (:notes_list) {NotesList.new }
	let (:note) {Note.new}

	it 'can use the add note method to add a title and body to a list of notes in the notes app' do 
		note = {title: "get milk",body: "don't forget to pick up the milk on the way home"}

		updated_notes = notes_list.add_note(note)

		expect(updated_notes).to include({title: "get milk", body: "don't forget to pick up the milk on the way home"})
	end

	it 'can respond to show_titles method' do
		note = {title: "Lauren", body: "this is the body"}
		
		2.times{ notes_list.add_note(note) }
	

		expect{notes_list.show_titles}.to output("Lauren\nLauren\n").to_stdout
	end 

	it 'should let a user pick a note and display it' do 	
		note = {title: "Lauren", body: "this is the body"}
		note2 = {title: "get milk", body: "don't forget to pick up the milk on the way home"}
		
		notes_list.add_note(note)
		notes_list.add_note(note2)

		expect(notes_list.display("Lauren")).to eq({title: "Lauren", body: "this is the body"})
	end
end