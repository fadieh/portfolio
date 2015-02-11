require 'sinatra'
require 'rack-flash'
require 'rest_client'

set :public_folder, Proc.new { File.join(root, '..', 'public') }

set :show_exceptions, false

use Rack::Flash

enable :sessions
set :session_secret, 'super secret'

	get '/' do
		erb :index
	end

	# post '/contacted' do
	# 	@name = params[:name]
	# 	@company = params[:company]
	# 	@comments = params[:comments]
	# 	@email = params[:email]
	# 	send_email(@name,@company,@comments,@email)
	# 	flash[:notice] = "Your message has been sent and will be read shortly."
	# 	redirect('/')
	# 	erb :contact
	# end

	# def send_email(name,company,comments,email)
	# 	RestClient.post "https://api:key-9697e2ab8b43fcf3bcef4b16a489d1fc"\
 #  		"@api.mailgun.net/v2/sandbox4e7aa7e546fe470fa8374cfef666b223.mailgun.org/messages", 
	# 	:from => "Fadie.co.uk <postmaster@sandbox4e7aa7e546fe470fa8374cfef666b223.mailgun.org>",
	# 	:to => "fadiehannona@gmail.com",
	# 	:subject => "Comments from your portfolio",
	# 	:text => "#{name} (#{email}) from #{company} says the following: #{comments}"
	# end