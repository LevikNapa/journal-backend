class Entry < ApplicationRecord
  validates :title, :content, presence: true
end
