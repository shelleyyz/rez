class PagesController < ApplicationController
  def home
    @question = 'I am feeling anxious can you help'
    result = $dialogflow.text_request @question
    p @question

    @answer = result[:result][:fulfillment][:speech]
      p @answer
    # raise
  end

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


end
