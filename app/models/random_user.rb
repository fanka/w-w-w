class RandomUser < ApplicationRecord
  has_many :forecasts

  def self.choose_one
    id = RandomUser.pluck(:id).sample
    @random_user = RandomUser.find_by(id: id)
    return @random_user
  end

end
