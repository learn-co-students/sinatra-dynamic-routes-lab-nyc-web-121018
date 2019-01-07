require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    params[:name].reverse
  end


  get '/square/:number' do
    num = params[:number]
      (num.to_i ** 2).to_s
    end


  get '/say/:number/:phrase' do
    num =   params[:number]
    talk =  params[:phrase]
     talk * num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  word1 =  params[:word1]
  word2 = params[:word2]
  word3 = params[:word3]
  word4 = params[:word4]
  word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 =  params[:number1]
    num2 = params[:number2]

    if operation == "add"
      "#{num1.to_i + num2.to_i}"
    elsif operation == "subtract"
      "#{num2.to_i - num1.to_i}"
    elsif operation == "multiply"
      "#{num1.to_i * num2.to_i}"
    elsif operation == "divide"
      "#{num1.to_i / num2.to_i}"
    end
  end

end
