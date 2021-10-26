class Question < ApplicationRecord
  belongs_to :subject, counter_cache: true, inverse_of: :questions
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  paginates_per 5
  scope :_seach_, lambda { |params, page|
                    includes(:answers, :subject)
                      .where('lower(description) LIKE ?', "%#{params.downcase}%")
                      .page(page)
                  }
  scope :_seach_description_, lambda { |params|
    where('lower(description) LIKE ?', "%#{params.downcase}%")
  }

  scope :_seach_subject, lambda { |params_subject_id, page|
                           includes(:answers, :subject)
                             .where(subject_id: params_subject_id)
                             .page(page)
                         }

  scope :last_questions, lambda { |page|
    includes(:answers, :subject)
      .order('created_at desc')
      .page(page)
  }
end
