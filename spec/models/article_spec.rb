require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

describe Article, type: :model do
  it { should have_many :comments }
end
