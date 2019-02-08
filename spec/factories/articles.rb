FactoryBot.define do
  factory :article do
    title { "Article title" }
    content { "Article text" }

    # создаём фабрику для создания статьи с несколькими комментариями
    factory :article_with_comments do
    	# после создания article
    	after :create do |article|
    		# создаём список из 3-х комментариев
    		create_list :comment, 3, article: article
    	end
    end
  end
end