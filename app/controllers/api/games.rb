class Api::GamesController < ApplicationController
  def query_params_action
    @your_name = params["my_name"]
    @capitalized_name = params["my_name"].upcase
    render 'name.json.jbuilder'
  end

def first_letter
@name = params[name]
if @name.downcase[0] == "a"
@message = "Your name is dumb"
end  
render 'first_letter.json.jbuilder'
end  

def guess
@number = params["guess"].to_i
target = 42
if @number > target
@message = "Too high"
elsif @number < target
@message = "Too low"
else 
@message = "You got it."   
end       
render 'guess.json.jbuilder'
end
end
