class Crew < ApplicationRecord
  has_many :characters

  def validate_presence_of(attribute)
    self.has_attribute?(attribute)
  end

end