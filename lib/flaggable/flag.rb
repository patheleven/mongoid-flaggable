class Flag
  include Mongoid::Document
  include Mongoid::Timestamps

  field :reason, type: String
  validates_presence_of :reason

  belongs_to :flaggable, polymorphic: true
end
