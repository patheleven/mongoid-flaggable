class Flag
  include Mongoid::Document

  field :reason, type: String
  validates_presence_of :reason

  belongs_to :flaggable, polymorphic: true
end
