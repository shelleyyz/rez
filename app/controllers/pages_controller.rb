class PagesController < ApplicationController
  def home
    @question = 'I am feeling anxious can you help'
    result = $dialogflow.text_request @question
    p @question

    @answer = result[:result][:fulfillment][:speech]
      p @answer
    # raise


#get question from params from form submission
#get answer/response from dialogflow
#append answer to page

  end

  # def create
  #   @request = params[:chatContent]
  # end


end
