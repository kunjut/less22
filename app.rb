#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@title = 'Barber Shop'
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	@title = 'О нас'
	erb :about
end

get '/visit' do
	@title = 'Записаться'
	erb :visit
end

get '/contacts' do
	@title = 'Контакты'
	erb :contacts
end

post '/visit' do
	@title = 'Записаться'
	@username = params[:username]
	@phonenumber = params[:phonenumber]
	@datetime = params[:datetime]

	@f = File.open './public/users.txt','a'
	@f.write "username: #{@username}; phonenumber: #{@phonenumber}; datetime: #{@datetime}"
	@f.close

	erb :visit
end

post '/contacts' do
	@title = 'Контакты'
	
	@email = params[:email]
	@usermessage = params[:usermessage]

	@f = File.open './public/contacts.txt','a'
	@f.write "e-mail: #{@email}; message: #{@usermessage}"
	@f.close

	erb :contacts
end