require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    #@user_name_reverse = [] 
    #@user_name_reverse << @user_name.reverse
    #return @user_name_reverse
    return @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @num_squ = @num.to_i ** 2
    return @num_squ.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phr = params[:phrase]
    @num_times = @num.to_i
    return @phr * @num_times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @sentence_words = @words.join(" ")
    return "#{@sentence_words}."
  end

  get '/:operation/:number1/:number2' do
    @symbol = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
      if @symbol == "add"
        @add = @num1.to_i + @num2.to_i
        return @add.to_s
      elsif @symbol == "subtract"
        @sub = @num1.to_i - @num2.to_i
        return @sub.to_s
      elsif @symbol == "multiply"
        @multi =  @num1.to_i * @num2.to_i
        return @multi.to_s
      else @symbol == "divide"
        @div =  @num1.to_i / @num2.to_i
        return @div.to_s
      end
  end

end