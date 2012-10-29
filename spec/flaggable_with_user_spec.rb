require 'spec_helper'

class User
  include Mongoid::Document
end

class ClassWithFlags
  include Mongoid::Document
  include Mongoid::Flaggable
end

describe 'A document can be flagged by a user' do
  subject { ClassWithFlags }

  it 'allows a user to flag content with a reason' do
    user = User.create
    content = subject.create
    content.flag_for_user_with_reason user, 'because'
    content.flags.last.user.must_be :==, user
  end
end

describe 'A flag' do
  subject { Flag                 }
  it      { must belong_to :user }
end

describe 'A user' do
  subject { User                 }
  it      { must have_many :flag }
end
