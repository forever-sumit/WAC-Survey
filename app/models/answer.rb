class Answer < ApplicationRecord
  belongs_to :question

  def score_and_id
    "#{id}-#{answer_score}"
  end
end
