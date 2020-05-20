class Critic < ApplicationRecord
  validates :username, presence: true, length: { in: 2..12 }, format: { with: /\w/ }
  validats :body, :title, presence: { message: "Please write something!" }

  belongs_to :game
end
