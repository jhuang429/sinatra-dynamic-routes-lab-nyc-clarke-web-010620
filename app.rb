require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
    
  get '/square/:number' do
     @num = params[:number]
     "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @numtimes = params[:number].to_i
    @output = ""
    @numtimes.times {@output << @phrase}
    "#{@output}"
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1] + " "
    word2 = params[:word2] + " "
    word3 = params[:word3] + " "
    word4 = params[:word4] + " "
    word5 = params[:word5]
    combinded = word1 + word2 + word3 + word4 + word5 + "."
    combinded

  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    solution = 0


    case operation 
    when "add"  
      solution = num1 + num2
    when "subtract"
      solution = num1 - num2
    when "multiply"
      solution = num1 * num2  
    when "divide"  
      solution = num1 / num2
    end
    "#{solution}"
  end

end