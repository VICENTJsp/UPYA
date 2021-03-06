class AnswersController < ApplicationController
  def create
    render 'questions/show' if answer_params[:choices].blank?

    choice = Choice.find(answer_params[:choices])

    answer = Answer.new(
      user: current_user,
      choice: choice
    )
    if choice.next_question_id
      current_user.update(
        current_question_id: choice.next_question_id
      )
    end

    if choice.step_id
      current_user.update(
        step_id: choice.step_id
      )
    end

    answer.save

    if choice.question_id == Question.last.id && choice.value == true
      redirect_to pages_show_path
    elsif choice.next_question_id.nil?
      cookies[:currentstep] = (Step.find(current_user.step_id).position).to_s || 'none'
      redirect_to steps_path(anchor: "my_target")
    else
      redirect_to question_path(choice.next_question_id)
    end
  end

  private

  def answer_params
    params.require(:question).permit(:choices)
  end
end
