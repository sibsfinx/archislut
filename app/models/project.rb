class Project < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  mount_uploader :image, ImageUploader

  scope :random, ->(user=nil) do

    #unless user.blank?
    #  voted_ids = user.get_voted(Project).map(&:id)
    #  return where("id not in (?)", voted_ids).order("random()").limit(1).first
    #end

    order("random()").limit(1).first
  end
end
