class GamesController < ApplicationController
 

 def games_view 

    @output = params[:name]

    if @output.class == String

        @name= @output[0]
        @output = " #{@output.upcase}"
        puts @output

        if @name == "A"
         @response ="Hey, your name starts with the first letter of alphabet"
        
        end 

      else @name = (" ")
           @output = "Please enter your name in the url starting with a question mark like this; ?name=yourname"
   end 

    render "view_info.html.erb"
  end

  def guess_number
    @number = params[:number]
    @random_number = @number.to_i 

    if@random_number > 35
        @answer = "Guess lower"

     elsif  @random_number < 35
         @answer = "Guess Higher"

      elsif @random_number == 35
        @answer = "Congraculations you have Won"
      end 
      render "guess_number.html"
    end 
end
