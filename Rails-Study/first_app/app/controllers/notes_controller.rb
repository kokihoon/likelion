class NotesController < ApplicationController
  #Create
  def new

  end
  def create
    note = Note.new
    note.title = params[:input_title]
    note.content = params[:input_content]
    note.save
    # TODO : 'notes/new' 로 리다이렉트 되는걸 변경한다.
    redirect_to "/notes/#{note.id}"
    #views/notes/create.hrml.erb 를 보여줘라!
  end
  # Read
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find params[:id]
    # @note = Note.find 1
  end
end
