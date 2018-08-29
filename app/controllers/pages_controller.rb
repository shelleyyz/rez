class PagesController < ApplicationController
  def home
    @question = 'I am feeling anxious can you help'
    result = $dialogflow.text_request @question
    p @question

    @answer = result[:result][:fulfillment][:speech]
      p @answer
    # raise
  end

#get question from params from form submission - form has route that is controlled by method in controller

#get answer/response from dialogflow
#append answer to page

# button / form => route which hears the button click
#  the route should point to a controller method
#  the controller method shoulf get the Q from params and send it to $dialoglfow
#  the answer is returned from dialogflow
# Q and A should be appeneded to the page someoheow

  def chat
    @request = params[:chatContent] #assigning input to request

    if @request.length < 1
          @request = "(Nothing was asked.)"
    end

    result = $dialogflow.text_request @request #posting request and getting response back from dialogflow
    @response = result[:result][:fulfillment][:speech] #getting correct data from JSON and assigning to response
    @current_user.conversations.create :request => @request, :response => @response #saving request and response to the conversations table / database . Then creating a conversation and saving it to the current user with user id.

    redirect_back :fallback_location => root_path #rails require fallback location otherwise it will error

    #have to remove turbolinks so that it doesn't refresh the page everytime a post request starts
  end

  def convert_url
    regex_url = /https?:\/\/[\S]+/
    match = regex_url.match(@response)
    if @response.match(regex_url)
      @converted_response = @response.sub!(regex_url, '<a href="{$url[0]}">{$url[0]}</a>', @response)
    else
      @converted_response = @response
    end
#convert the plain text url received from response and convert it into html hyperlink
    end
end