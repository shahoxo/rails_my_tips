require 'rubygems'
require 'rparsec'
class Query < ActiveRecord::Base
  attr_accessible :sql_text, :ruby_text
end
