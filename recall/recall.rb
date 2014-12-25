require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/recall.db")

class Note
  include DataMapper::Resource
  property :id, Serial #auto-incrementing and integer primary key
  property :content, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end

DataMapper.finalize.auto_upgrade! #instructs DataMapper to automatically upgrade the database to contain the tables and fields set, and to do so again if any changes are made to the schema

get '/' do
  @notes = Note.all(:order => [:id.desc])
  @title = 'All Notes'
  erb :home
end