require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

describe Article, type: :model do
  describe "assotiations" do
    it { should have_many :comments }
    it { should validate_presence_of :title}
    it { should validate_presence_of :content}
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Foo Bar')

      expect(article.subject).to  eq 'Foo Bar'
    end
  end
end
