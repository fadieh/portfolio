require 'sinatra'

# class Portfolio < Sinatra::Base

set :public_folder, Proc.new { File.join(root, '..', 'public') }

set :show_exceptions, false

	get '/' do
		erb :index
	end

	get '/story' do
		erb :story
	end

	get '/contact' do
		erb :contact
	end

# end