require 'sinatra'

set :public_folder, Proc.new { File.join(root, '..', 'public') }
set :views, Proc.new { File.join(root, '..', 'views') }

get '/' do
	erb :index
end

get '/story' do
	erb :story
end

get '/contact' do
	erb :contact
end