class Url < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :expires_at, :name

  after_create :generate_identifier
  private
  def generate_identifier
    self.name = self.id.to_s(36) 
    self.save
  end

end
