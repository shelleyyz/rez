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
    @request = params[:chatContent]
    result = $dialogflow.text_request @request
    #getting the text response only

    @response = result[:result][:fulfillment][:speech]
    p @response

  end
end
