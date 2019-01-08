require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse!}!"
  end

  get "/square/:number" do
    @n = params[:number]
    "Square is #{@n.to_i ** 2}."
  end

  get "/say/:number/:phrase" do
    @n = params[:number]
    @p = params[:phrase]
    string = " "
    (@n.to_i).times do
      string << "#{@p} "
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @op == "add"
      @result = @n1 + @n2
    elsif @op == "subtract"
      @result = @n1 - @n2
    elsif @op == "multiply"
      @result = @n1 * @n2
    elsif @op == "divide"
      @result = @n1 / @n2
    end
    "#{@result}"
  end

end
