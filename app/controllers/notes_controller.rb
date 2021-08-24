class NotesController < ApplicationController
 def index
  puts "Index called"
  notes = Note.all
  render component: "Notes", props: { notes: notes } #Send to my react component
 end

 def show
  note = Note.find(params[:id])
  render component: "Note", props: { note: note } 
 end

 def new
    render component: "NewNote"
 end

 def create
  # this creates a user in memory
  note = Note.new(note_params)
  if note.save
    # go back to index
    redirect_to notes_path
  else
    # invalid input
    # TODO handle invalid input here
  end
 end

 private
 def note_params
  params.require(:note).permit(:title, :description)
 end

end
