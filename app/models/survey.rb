class Survey < ApplicationRecord
  has_many :survey_scores
  accepts_nested_attributes_for :survey_scores, allow_destroy: true
end
