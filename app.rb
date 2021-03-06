require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
       (params[:number].to_i).times do
         final_string += "#{params[:phrase]}\n"
       end
       final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      # if operation == "add"
      #   answer = number1 + number2
      # elsif operation == "subtract"
      #   answer = number1 - number2
      # elsif operation == "multiply"
      #   answer = number1 * number2
      # elsif operation == "divide"
      #   answer = number1 / number2
      # else
      #   answer = "Unable to perform this operation"
      # end
      case operation
        when "add"
          answer = number1 + number2
        when "subtract"
          answer = number1 - number2
        when "multiply"
          answer = number1 * number2
        when "divide"
          answer = number1 / number2
        else
            answer = "Unable to perform this operation"
        end

      answer.to_s
    end


end
