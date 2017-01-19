class GamesController < ApplicationController
 
 def games_view 

    @output = params[:name]
    puts @output

    @name=@output[0]

    if @name == "A"
      @response ="Hey, your name starts with the first letter of alphabet"
    end 

    render "view_info.html.erb"
  end

end
