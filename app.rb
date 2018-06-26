require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params["name"], params["breed"], params["age"])

    erb :display_puppy
  end
end

#
# Now we need to make sure the form is being submitted properly.
# You'll need to have a third controller action that takes the
# input from the user and renders a third view (views/display_puppy.erb)
# which displays the info for the puppy that was just created
