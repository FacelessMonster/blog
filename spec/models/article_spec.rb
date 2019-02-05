require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

describe Article, type: :model do
  describe "validates" do
    it { should have_many :comments }
    it { should validate_presence_of :title}
    it { should validate_presence_of :content}
    it { should validate_length_of(:title).is_at_most(140) }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Foo Bar')

      expect(article.subject).to  eq 'Foo Bar'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      #создаем статью с комментариями
      article = create(:article_with_comments)
      #проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end


end
