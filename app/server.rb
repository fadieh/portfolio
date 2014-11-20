require 'sinatra'

set :public_folder, Proc.new { File.join(root, '..', 'public') }

get '/' do
	erb :index
end

get '/story' do
	erb :story
end

get '/web' do
	erb :web
end

get '/design' do
	erb :design
end

get '/contact' do
	erb :contact
end