require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 

  get '/square/:number' do 
    @number = params[:number]
    sum = @number.to_i ** 2 
    sum.to_s
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    answer = @phrase * @number.to_i
    answer.to_s
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    case @operation
    when "add"
      answer = @number1.to_i + @number2.to_i
    when "subtract"
      answer = @number1.to_i - @number2.to_i
    when "multiply"
      answer = @number1.to_i * @number2.to_i
    when "divide"
      answer = @number1.to_i / @number2.to_i
    end 
    answer.to_s
  end 
end