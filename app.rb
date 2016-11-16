require("sinatra")
require("sinatra/reloader")
require("./lib/numbers_to_words.rb")
also_reload('lib/**/*.rb')

get ("/form") do
  erb(:form)
end

get ("/word") do
  @result = params.fetch("number").to_i.numbers_to_words()
  erb(:word)
end
