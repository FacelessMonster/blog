FactoryBot.define do
  factory :comment do
    author { "murtaza" }
    sequence(:body) { |n| "comment body #{n}" }
  end
end