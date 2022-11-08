class Post < ApplicationRecord
  validates :starting_date, presence: true
  validates :ending_date, presence: true
  validate :start_end_check

  def start_end_check
    errors.add(:ending_date, "は開始日より前の日付は登録できません。") unless
    self.starting_date < self.ending_date 
  end
end
