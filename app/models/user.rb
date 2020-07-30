class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answer
  has_many :orders

  before_save :default_step_id

  def default_step_id
    if self.step_id.nil?
      self.step_id = Step.first.id
      self.current_question_id = Question.first.id
    end
  end

end
