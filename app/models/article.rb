class Article < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	default_scope { order(date: :desc) }

	has_and_belongs_to_many :tags
	has_attached_file :main_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\z/

end