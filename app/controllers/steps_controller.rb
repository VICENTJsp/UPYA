class StepsController < ApplicationController

  def index
    @steps = Step.all
    @articles = Article.all
    @videos = Video.all
    @coachs = Coach.all

    @question = Question.find(current_user.current_question_id)
    @choice1 = Choice.where(question_id: current_user.current_question_id).first
    @choice2 = Choice.where(question_id: current_user.current_question_id).last
    @answer = Answer.new
  end
  
end
