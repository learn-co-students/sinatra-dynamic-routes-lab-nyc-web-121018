require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get '/' do

   end

get '/reversename/:name' do
  #accepts a name and renders the name backwards.
  @name = params[:name]
  "#{@name.reverse}"
end

get '/square/:number' do
  #accepts a number and returns the square of that number
  @num = params[:number].to_i
  "#{@num **2}"
end


get '/say/:number/:phrase' do
  #accepts a number and a phrase, returns that phrase in a string the number of times given
  @number = params[:number].to_i
  @phrase = params[:phrase]
  # @number.times do |i|
  #   "#{@phrase}"
  # end
  "#{@phrase * @number}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  #accepts five words and returns a string containing all five words
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do
  #accepts an operation (add, subtract, multiply or divide) and performs the operation
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  if @operation === "add"
    "#{@number1+@number2}"
  elsif @operation === "subtract"
    "#{@number1-@number2}"
  elsif @operation === "multiply"
    "#{@number1*@number2}"
  elsif @operation === "divide"
    "#{@number1/@number2}"
  end
end

end
