require 'note'

describe Note do
	let (:note) {Note.new }

	it "can define a note as a hash" do
		new_note = note.create_note("hi","body")
		expect(new_note).to eq({title: "hi", body: "body"})
	end

end