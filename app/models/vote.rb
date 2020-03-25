class Vote < ApplicationRecord
<<<<<<< HEAD
    belongs_to :user
    belongs_to :article

    validates :user_id, presence: true
    validates :article_id, presence: true
=======
  belongs_to :user
  belongs_to :article
>>>>>>> development
end
