require 'spec_helper'

describe Flag do
  subject { Flag }
  it { must be_document                        }
  it { must have_field(:reason).of_type String }
  it { must validate_presence_of :reason       }
  it { must belong_to :flaggable               }
end
