require 'spec_helper'

class ClassWithFlags
  include Mongoid::Document
  include Mongoid::Flaggable
end

class AnotherClassWithFlags
  include Mongoid::Document
  include Mongoid::Flaggable
end

[ClassWithFlags, AnotherClassWithFlags].each do |clazz|
  describe 'A document that can be flagged' do
    subject { clazz }
    it { must have_many(:flags).of_type Flag }

    it 'flags content with a reason' do
      content = subject.create
      content.flag_with_reason 'because'
      content.flags.first.reason.must_be :==, 'because'
    end

    it 'does not have a flag for user method' do
      subject.wont_respond_to :flag_for_user_with_reason
    end
  end
end
