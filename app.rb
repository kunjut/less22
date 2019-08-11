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