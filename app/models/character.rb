class Character < ApplicationRecord
  belongs_to :crew

  def validate_presence_of(attribute)
    self.has_attribute?(attribute)
  end
end