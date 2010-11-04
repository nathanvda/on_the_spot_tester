class Post < ActiveRecord::Base
  validate :check_test_capitalized

  def check_test_capitalized
    unless test_capitalized.nil?
      self.errors[:base] << "First letter must be a capital" unless self.test_capitalized == self.test_capitalized.capitalize
    end
  end

end
