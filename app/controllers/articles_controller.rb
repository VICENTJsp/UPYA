class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @step = Step.all
    puts @article.step_id
    cookies[:currentstep] = (Step.find(current_user.step_id).position) || 'none'
  end
end
