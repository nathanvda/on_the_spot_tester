class Post < ActiveRecord::Base
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::TagHelper

  validate :check_test_capitalized



  def check_test_capitalized
    unless test_capitalized.nil?
      self.errors[:base] << "First letter must be a capital" unless self.test_capitalized == self.test_capitalized.capitalize
    end
  end

  def formatted_text
    simple_format(self.large_text).html_safe
  end

end
