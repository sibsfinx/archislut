class Project < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :image, :author, :description, presence: true

  scope :random, ->(user=nil) do
    if user.blank?
      return order("random()").limit(1)
    else user.blank?
      voted_ids = user.get_voted(Project).map(&:id)
      if voted_ids.blank?
        return order("random()").limit(1)
      else
        return where("id not in (?)", voted_ids).order("random()").limit(1)
      end
    end
  end
end
