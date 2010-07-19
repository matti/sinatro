require 'rubygems'
require 'sinatra'

configure do
	INDEX = "public/index.html"
end

helpers do	
end

get '/' do
	if File.exist? INDEX
		File.open(INDEX).read
	else
		halt 404, "#{INDEX} missing"
	end
end