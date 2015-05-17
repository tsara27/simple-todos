class Todo
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::TaggableOn

  taggable_on :tags

  field :text, type: String
  field :status, type: String

  validates_presence_of [:text, :status]
end