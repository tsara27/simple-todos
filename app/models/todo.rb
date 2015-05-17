class Todos
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::TaggableOn

  taggable_on :tags

  field :text, type: String
  field :status, type: String

end