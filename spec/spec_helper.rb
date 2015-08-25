require("rspec")
require("pg")
require("sinatra/activerecord")
require("survey")
require("question")
require('capybara/rspec')


ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.after(:each) do
    Question.all().each() do |question|
      question.destroy()
    end
  end
end
