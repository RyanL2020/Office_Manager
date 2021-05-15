class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :office

  def self.created_before(time)
    where("created_at < ?", time) if time.present?
  end
end
