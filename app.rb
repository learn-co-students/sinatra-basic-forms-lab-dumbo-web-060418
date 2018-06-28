require_relative 'config/environment'

class App < Sinatra::Base

	## calls root page and renders index.erb
	get('/'){ erb :index }

	## calls /new page and renders create_puppy.erb
	get('/new'){
		erb :create_puppy
	 }
	 ## using the post in roo
	post('/new'){
		@puppy = Puppy.new(params[:name], params[:breed], params[:age])
		erb :display_puppy
	}


end
