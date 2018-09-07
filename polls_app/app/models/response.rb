# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    Response.select(*).joins(respondent).where(self.question)

  end

  # def repeated_response
  #   all_user_ids = Response.find_by(user_id: self.user_id, answer_choice_id: self.answer_choice_id)
  #   if user_id
  #     errors[:user_id] << "You already answered that question"
  #   end
  #
  # end

end
